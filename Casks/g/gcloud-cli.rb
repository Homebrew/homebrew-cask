cask "gcloud-cli" do
  arch arm: "arm", intel: "x86_64"

  version "532.0.0"
  sha256 arm:   "3b83d14acdd96444706e30d3bab9acf959f3a875cbf597e51bc59ff3666528e7",
         intel: "774fc80866230445d7d4a4bad2464110aeaa8b77d56da3f9b44737734a13a756"

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-#{version}-darwin-#{arch}.tar.gz"
  name "Google Cloud CLI"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/cli/"

  livecheck do
    url "https://cloud.google.com/sdk/docs/install-sdk"
    regex(/latest\s*gcloud\s*CLI\s*version\s*\(v?(\d+(?:\.\d+)+)\)/i)
  end

  auto_updates true
  depends_on formula: "python@3.12"

  google_cloud_sdk_root = "#{HOMEBREW_PREFIX}/share/google-cloud-sdk"

  installer script: {
    executable: "google-cloud-sdk/install.sh",
    args:       [
      "--quiet",
      "--usage-reporting", "false",
      "--bash-completion", "false",
      "--path-update", "false",
      "--rc-path", "false",
      "--install-python", "false"
    ],
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
    # Install required external dependencies via virtualenv
    if File.exist?(File.join(Dir.home, "/.config/gcloud/virtenv"))
      puts "deleting existing virtual env before enabling virtual env with current Python version"
      system_command "#{google_cloud_sdk_root}/bin/gcloud",
                     args: ["config", "virtualenv", "delete", "-q"]
    end
    system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                    args: ["config", "virtualenv", "create", "--python-to-use",
                           "#{HOMEBREW_PREFIX}/opt/python@3.12/libexec/bin/python3"]
    system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                    args: ["config", "virtualenv", "enable"]

    system_command  "#{google_cloud_sdk_root}/bin/gcloud",
                    args: ["version"]
  end

  uninstall trash: staged_path.dirname/"latest"

  zap trash: [
    "#{google_cloud_sdk_root}.staging",
    google_cloud_sdk_root,
  ]
end
