cask "master-pdf-editor" do
  version "5.6.49"
  sha256 "9ee3405be69a78705eacabc9fb8e1281d32dceaa06613999839e86ce21899d63"

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
