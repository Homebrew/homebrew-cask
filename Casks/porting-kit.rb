cask "porting-kit" do
  version "3.0.58"
  sha256 "abbee91f41e03e414fc1325b7e21f7998d76c39527e4329eaa3bb4a8e85fb6ac"

  url "https://portingkit.com/kit/Porting%20Kit%20#{version}.zip"
  name "Porting Kit"
  homepage "https://portingkit.com/"

  livecheck do
    url "https://portingkit.com/kit/updatecast.xml"
    strategy :sparkle
  end

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
