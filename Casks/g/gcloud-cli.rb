cask "gcloud-cli" do
  arch arm: "arm", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "587.0.0"
  sha256 arm:          "088d923d11dd5f922bfdf0ff12fc8a94934264e32a57c0cd3afc24ce7bfa5452",
         intel:        "8e008577a1dd2da070f8a7aeb116aae7a525824f7b7761e912f848b51e3c0145",
         arm64_linux:  "8349b151da42f07136294da0908624fe8ea16fea200cb2f4412ad081a86e890c",
         x86_64_linux: "57df2448d259c654796a3703af8e5b53a02d439715b2034d6bb811efc2d6dd7b"

  google_cloud_sdk_root = "#{HOMEBREW_PREFIX}/share/google-cloud-sdk"

  args = [
    "--quiet",
    "--usage-reporting", "false",
    "--bash-completion", "false",
    "--path-update", "false",
    "--rc-path", "false",
    "--update-installed-components"
  ]

  on_macos do
    depends_on formula: "python@3.14"

    args << "--install-python" << "false"
  end
  on_linux do
    on_arm do
      depends_on formula: "python@3.14"
    end
  end

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-#{version}-#{os}-#{arch}.tar.gz"
  name "Google Cloud CLI"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/cli/"

  livecheck do
    url "https://docs.cloud.google.com/sdk/docs/install-sdk"
    regex(/gcloud\s*CLI\s*version\s*\(?v?(\d+(?:\.\d+)+)\)?/i)
  end

  auto_updates true

  installer script: {
    executable: "google-cloud-sdk/install.sh",
    args:       args,
  }
  binary "google-cloud-sdk/bin/bq"
  binary "google-cloud-sdk/bin/docker-credential-gcloud"
  binary "google-cloud-sdk/bin/gcloud"
  binary "google-cloud-sdk/bin/git-credential-gcloud.sh", target: "git-credential-gcloud"
  binary "google-cloud-sdk/bin/gsutil"
  bash_completion "google-cloud-sdk/completion.bash.inc", target: "google-cloud-sdk"
  zsh_completion "google-cloud-sdk/completion.zsh.inc", target: "_google_cloud_sdk"

  preflight_steps do
    copy "google-cloud-sdk/.", "share/google-cloud-sdk", target_base: :homebrew_prefix, recursive: true
    remove "google-cloud-sdk", recursive: true
    symlink "{{HOMEBREW_PREFIX}}/share/google-cloud-sdk", "google-cloud-sdk"
  end

  postflight_steps do
    # HACK: Allow existing shell profiles to work by linking the current version to the `latest` directory.
    unless_path_exists "{{caskroom_path}}/latest" do
      symlink "{{staged_path}}", "{{caskroom_path}}/latest", overwrite: true
    end

    on_macos do
      if_path_exists "~/.config/gcloud/virtenv" do
        run "share/google-cloud-sdk/bin/gcloud", base: :homebrew_prefix,
                                                 args: ["config", "virtualenv", "delete", "-q"],
                                                 env:  {
                                                   "CLOUDSDK_PYTHON" => "{{HOMEBREW_PREFIX}}/opt/" \
                                                                        "python@3.14/libexec/bin/python",
                                                 }
      end
      run "share/google-cloud-sdk/bin/gcloud", base:           :homebrew_prefix,
                                               args:           ["config", "virtualenv", "create", "--python-to-use",
                                                                "{{HOMEBREW_PREFIX}}/opt/" \
                                                                "python@3.14/libexec/bin/python"],
                                               env:            {
                                                 "CLOUDSDK_PYTHON" => "{{HOMEBREW_PREFIX}}/opt/" \
                                                                      "python@3.14/libexec/bin/python",
                                               },
                                               network_access: true
      run "share/google-cloud-sdk/bin/gcloud", base: :homebrew_prefix,
                                               args: ["config", "virtualenv", "enable"],
                                               env:  {
                                                 "CLOUDSDK_PYTHON" => "{{HOMEBREW_PREFIX}}/opt/" \
                                                                      "python@3.14/libexec/bin/python",
                                               }
      run "share/google-cloud-sdk/bin/gcloud", args: ["version"], base: :homebrew_prefix,
          env: { "CLOUDSDK_PYTHON" => "{{HOMEBREW_PREFIX}}/opt/python@3.14/libexec/bin/python" }
    end
  end

  uninstall trash: staged_path.dirname/"latest"

  zap trash: [
    "#{google_cloud_sdk_root}.staging",
    google_cloud_sdk_root,
  ]

  caveats <<~EOS
    To use additional binary components installed via gcloud, add the "#{google_cloud_sdk_root}/bin"
    directory to your PATH environment variable, e.g., (for Bash shell):
       export PATH=#{google_cloud_sdk_root}/bin:"$PATH"
  EOS
end
