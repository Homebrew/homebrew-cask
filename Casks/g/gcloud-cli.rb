cask "gcloud-cli" do
  arch arm: "arm", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "590.0.1"
  sha256 arm:          "02f20618f43b9147e049a73fec37ab71b586b0dc6a242fa6ca835229cb5e542f",
         intel:        "32e41cdb54d3946bcd5d29bd2bd9f3d8923bf1578e8ecc94d0999f2f18f2f0f1",
         arm64_linux:  "fd760d8b1c2c4c484d7b659964994b07aaefddc6ac4350e681940477dbdbb22c",
         x86_64_linux: "d1ae7be7e12c4e7d8286fab4774f5441020aca89dc7793ddacbace8d11d20f06"

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
