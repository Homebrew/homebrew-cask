cask "porting-kit" do
  version "4.1.31"
  sha256 "7b1c65bafd41a621e5b10843f5eb27ad9f10b77dede13ad5219911cb94a2871f"

  url "https://portingkit.com/pub/portingkit/Porting%20Kit-#{version}-mac.zip"
  name "Porting Kit"
  homepage "https://portingkit.com/"

  livecheck do
    url "https://portingkit.com/pub/portingkit/latest-mac.yml"
    strategy :electron_builder
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
