cask "google-drive-file-stream" do
  version "44.0.14.1" # So it triggers an update for users of the cask
  sha256 :no_check

  url "https://dl.google.com/drive-file-stream/GoogleDriveFileStream.dmg"
  name "Google Drive File Stream"
  homepage "https://www.google.com/drive/"

  depends_on macos: ">= :el_capitan"
  stage_only true

  postflight do
    system_commad "brew",
      args: ["install", "google-drive"]
    system_commad "brew",
      args: ["uninstall", "google-drive-file-stream"]
  end

  caveats <<~EOS
    RENAME WARNING

    Google Drive File Stream has been renamed to Google Drive.

    `#{cask}` has been renamed `google-drive`. We will uninstall the former and install the latter. but you should update your scripts. `#{cask}` will be deleted on August 1, 2021.

    We’re aware this solution is subpar. If you’d like to help us improve it,
    we accept PRs and need the equivalent of formula_renames.json for casks: https://docs.brew.sh/Rename-A-Formula
  EOS
end
