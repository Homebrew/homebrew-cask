cask "google-drive-file-stream" do
  version "44.0.14.1" # So it triggers an upgrade for users of the cask
  sha256 :no_check

  url "https://dl.google.com/drive-file-stream/GoogleDrive.dmg"
  name "Google Drive File Stream"
  desc "Client for the Google Drive storage service"
  homepage "https://www.google.com/drive/"

  depends_on cask: "google-drive"

  stage_only true

  uninstall login_item: "Google Drive File Stream"

  caveats <<~EOS
    RENAME WARNING

    `#{cask}` will be renamed `google-drive`.
    In the meantime, `#{cask}` will install `google-drive` for you as a dependency, but you should update your scripts.

    We’re aware this solution is subpar. If you’d like to help us improve it,
    we accept PRs and need the equivalent of formula_renames.json for casks: https://docs.brew.sh/Rename-A-Formula

    To migrate now, do:
      brew uninstall #{cask}
      brew install google-drive
  EOS
end
