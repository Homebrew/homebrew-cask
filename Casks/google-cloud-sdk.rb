cask "google-cloud-sdk" do
  arch arm: "arm", intel: "x86_64"

  version "427.0.0"
  sha256 arm:   "e28d44a46d51eed5bde7fcfb8184284a8cdb2f7e050fe20ec6f6bb6638722966",
         intel: "104e0244195b0c644f9ecf13fbe3c7f5c580165a49fc444b643434f13d5340cc"

  url "https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-#{version}-darwin-#{arch}.tar.gz"
  name "Google Cloud SDK"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/sdk/"

  livecheck do
    url "https://cloud.google.com/sdk/docs/install-sdk"
    regex(/google-cloud-cli-(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "python"

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
  binary "google-cloud-sdk/bin/anthoscli"
  binary "google-cloud-sdk/bin/bq"
  binary "google-cloud-sdk/bin/docker-credential-gcloud"
  binary "google-cloud-sdk/bin/gcloud"
  binary "google-cloud-sdk/bin/git-credential-gcloud.sh", target: "git-credential-gcloud"
  binary "google-cloud-sdk/bin/gsutil"
  binary "google-cloud-sdk/completion.bash.inc",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/google-cloud-sdk"
  binary "google-cloud-sdk/completion.zsh.inc",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_google_cloud_sdk"

  preflight do
    FileUtils.cp_r staged_path/"google-cloud-sdk/.", google_cloud_sdk_root, remove_destination: true
    (staged_path/"google-cloud-sdk").rmtree
    FileUtils.ln_s google_cloud_sdk_root, (staged_path/"google-cloud-sdk")
  end

  postflight do
    # HACK: Allow existing shell profiles to work by linking the current version to the `latest` directory.
    unless (latest_path = staged_path.dirname/"latest").directory?
      FileUtils.ln_s staged_path, latest_path, force: true
    end
  end

  uninstall delete: staged_path.dirname/"latest"

  zap trash: [
    google_cloud_sdk_root,
    "#{google_cloud_sdk_root}.staging",
  ]

  caveats <<~EOS
    To add gcloud components to your PATH, add this to your profile:

      for bash users
        source "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"

      for zsh users
        source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
        source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

      for fish users
        source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

  EOS
end
