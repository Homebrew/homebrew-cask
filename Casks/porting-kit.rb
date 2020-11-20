cask "porting-kit" do
  version "3.0.52"
  sha256 "03f73a1a2c626aaf3f6c5a03e5bf81ec3fbfcfdabaa284e6320a2c069205640f"

  url "https://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  appcast "https://portingkit.com/kit/updatecast.xml"
  name "Porting Kit"
  homepage "https://portingkit.com/"

  auto_updates true

  app "Porting Kit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit.sfl*",
    "~/Library/Application Support/Porting-Kit",
    "~/Library/Caches/edu.ufrj.vitormm.Porting-Kit",
    "~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit.binarycookies",
    "~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit.plist",
    "~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit.savedState",
    "~/Library/WebKit/edu.ufrj.vitormm.Porting-Kit",
  ]
end
