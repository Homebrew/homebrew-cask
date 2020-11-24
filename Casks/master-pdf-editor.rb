cask "master-pdf-editor" do
  version "5.6.80"
  sha256 "90d0c1c2cf6ec2e8457ae60a001d91050147bcf122ae3b61bcb0bbf4fb162a16"

  url "https://code-industry.net/public/MasterPDFEditor.dmg"
  appcast "https://code-industry.net/get-masterpdfeditor/"
  name "Master PDF Editor"
  desc "PDF editor"
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
