cask "google-cloud-sdk" do
  version :latest # Must remain unversioned, else all installed gcloud components would be lost on upgrade
  sha256 :no_check

  url "https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz"
  name "Google Cloud SDK"
  homepage "https://cloud.google.com/sdk/"

  installer script: {
    executable: "google-cloud-sdk/install.sh",
    args:       [
      "--usage-reporting", "false", "--bash-completion", "false", "--path-update", "false",
      "--rc-path", "false", "--quiet"
    ],
  }
  binary "google-cloud-sdk/bin/bq"
  binary "google-cloud-sdk/bin/docker-credential-gcloud"
  binary "google-cloud-sdk/bin/gcloud"
  binary "google-cloud-sdk/bin/git-credential-gcloud.sh"
  binary "google-cloud-sdk/bin/gsutil"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
  uninstall delete: "#{staged_path}/#{token}"

  caveats <<~EOS
    #{token} is installed at #{staged_path}/#{token}. Add your profile:

      for bash users
        source "#{staged_path}/#{token}/path.bash.inc"
        source "#{staged_path}/#{token}/completion.bash.inc"

      for zsh users
        source "#{staged_path}/#{token}/path.zsh.inc"
        source "#{staged_path}/#{token}/completion.zsh.inc"

      for fish users
        set -g fish_user_paths "#{staged_path}/#{token}/path.fish.inc" $fish_user_paths
  EOS
end
