cask "google-cloud-sdk" do
  version :latest # Must remain unversioned, else all installed gcloud components would be lost on upgrade
  sha256 :no_check

  url "https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz"
  name "Google Cloud SDK"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/sdk/"

  depends_on formula: "python"

  installer script: {
    executable: "#{token}/install.sh",
    args:       [
      "--usage-reporting", "false", "--bash-completion", "false", "--path-update", "false",
      "--rc-path", "false", "--quiet",
      "--install-python", "false"
    ],
  }
  binary "#{token}/bin/anthoscli"
  binary "#{token}/bin/bq"
  binary "#{token}/bin/docker-credential-gcloud"
  binary "#{token}/bin/gcloud"
  binary "#{token}/bin/git-credential-gcloud.sh", target: "git-credential-gcloud"
  binary "#{token}/bin/gsutil"
  binary "#{token}/completion.bash.inc",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/#{token}"
  binary "#{token}/completion.zsh.inc",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_#{token}"

  # Not actually necessary, since it would be deleted anyway.
  # It is present to make clear an uninstall was not forgotten and that for this cask it is indeed this simple.
  uninstall delete: "#{staged_path}/#{token}"

  caveats <<~EOS
    To add gcloud components to your PATH, add this to your profile:

      for bash users
        source "#{staged_path}/#{token}/path.bash.inc"

      for zsh users
        source "#{staged_path}/#{token}/path.zsh.inc"

      for fish users
        source "#{staged_path}/#{token}/path.fish.inc"
  EOS
end
