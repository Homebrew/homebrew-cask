cask "master-pdf-editor" do
  version "5.8.70"
  sha256 "4a6dfa609b712ed115f0a88f133fcedea26dbf397d288a1f4327131de5145569"

  url "https://code-industry.net/public/MasterPDFEditor-#{version}.dmg"
  name "Master PDF Editor"
  desc "PDF editor"
  homepage "https://code-industry.net/masterpdfeditor/"

  livecheck do
    url "https://code-industry.net/public/MasterPDFEditor.dmg"
    strategy :extract_plist
  end

  auto_updates true

  app "Master PDF Editor.app"

  zap trash: [
    "~/Library/Application Support/Master PDF Editor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.code-industry.masterpdfeditor3.sfl*",
    "~/Library/Preferences/net.code-industry.Master PDF Editor.plist",
    "~/Library/Saved Application State/net.code-industry.MasterPDFEditor3.savedState",
  ]
end
