cask "gcloud-cli" do
  arch arm: "arm", intel: "x86_64"
  os macos: "darwin", linux: "linux"

  version "567.0.0"
  sha256 arm:          "1c6cd01b0c039f3966326514f380686f32637f1066862b28a0d766a7eb34a9f4",
         intel:        "871b40b75c0046ea9a54310037083945fe7929a2a799c3c31c8f37b70e82937a",
         arm64_linux:  "43ca9e1d07652c5c689debb8012bbc1c30fb73fa3d41287d1cc7f17cbea7e87f",
         x86_64_linux: "bd5afc0d249609cb40d45f665209190fdd38b9937954291b8f9ae54206c75d83"

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-#{version}-#{os}-#{arch}.tar.gz"
  name "Google Cloud CLI"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/cli/"

  livecheck do
    url "https://docs.cloud.google.com/sdk/docs/install-sdk"
    regex(/gcloud\s*CLI\s*version\s*\(?v?(\d+(?:\.\d+)+)\)?/i)
  end

  auto_updates true

  on_macos do
    depends_on formula: "python@3.13"
  end
  on_linux do
    on_arm do
      depends_on formula: "python@3.13"
    end
  end

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
    args << "--install-python" << "false"
  end

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

  preflight do
    FileUtils.cp_r staged_path/"google-cloud-sdk/.", google_cloud_sdk_root, remove_destination: true
    FileUtils.rm_r(staged_path/"google-cloud-sdk")
    FileUtils.ln_s google_cloud_sdk_root, (staged_path/"google-cloud-sdk")
  end

  postflight do
    # HACK: Allow existing shell profiles to work by linking the current version to the `latest` directory.
    unless (latest_path = staged_path.dirname/"latest").directory?
      FileUtils.ln_s staged_path, latest_path, force: true
    end

    if OS.mac?
      # Install required external dependencies via virtualenv
      if File.exist?(File.join(Dir.home, "/.config/gcloud/virtenv"))
        puts "deleting existing virtual env before enabling virtual env with current Python version"
        system_command "#{google_cloud_sdk_root}/bin/gcloud",
                       args:      ["config", "virtualenv", "delete", "-q"],
                       reset_uid: true
      end
      system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                      args:      ["config", "virtualenv", "create", "--python-to-use",
                                  "#{HOMEBREW_PREFIX}/opt/python@3.13/libexec/bin/python"],
                      reset_uid: true
      system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                      args:      ["config", "virtualenv", "enable"],
                      reset_uid: true

      system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                      args:      ["version"],
                      reset_uid: true
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
