cask "porting-kit" do
  version "3.0.51"
  sha256 "434c19c1bc6d9abdff12041875cb22703b4f6d9a97c34f4a7b36bb8abef01663"

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
