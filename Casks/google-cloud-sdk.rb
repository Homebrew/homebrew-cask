cask "google-cloud-sdk" do
  version :latest # Must remain unversioned, else all installed gcloud components would be lost on upgrade
  sha256 :no_check

  url "https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz"
  name "Google Cloud SDK"
  desc "Set of tools to manage resources and applications hosted on Google Cloud"
  homepage "https://cloud.google.com/sdk/"

  depends_on formula: "python"

  stage_only true

  postflight do
    system_command "#{staged_path}/#{token}/install.sh",
                   args: [
                     "--usage-reporting", "false", "--bash-completion", "false", "--path-update", "false",
                     "--rc-path", "false", "--quiet"
                   ],
                   env:  { "CLOUDSDK_PYTHON" => Formula["python"].opt_bin/"python3" }
  end

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
        source "#{staged_path}/#{token}/path.fish.inc"
  EOS
end
