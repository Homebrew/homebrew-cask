cask "master-pdf-editor" do
  version "5.6.38"
  sha256 "d9a68bdb1b8d0e47c4438c4a1732d52260aee9ee454ebb9561eb124b71021877"

  url "https://code-industry.net/public/MasterPDFEditor.dmg"
  appcast "https://code-industry.net/get-masterpdfeditor/"
  name "Master PDF Editor"
  homepage "https://code-industry.net/masterpdfeditor/"

  auto_updates true

  app "Master PDF Editor.app"

  zap trash: [
    "~/Library/Application Support/Master PDF Editor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*",
    "~/Library/Preferences/net.code-industry.Master PDF Editor.plist",
    "~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState",
  ]
end
