cask "hightop" do
  version "1.4"
  sha256 "6e7981e7734c2107e528f9885f67711fcdbca98f9f30ccd5bfff53127e347fbf"

  url "https://hightop.app/downloads/HighTop#{version}.dmg"
  name "HighTop"
  desc "File access via the menu bar"
  homepage "https://hightop.app/"

  livecheck do
    url "https://hightop.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "HighTop.app"

  uninstall quit: "com.knollsoft.HighTop"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HighTopLauncher",
    "~/Library/Application Support/HighTop+",
    "~/Library/Caches/com.knollsoft.HighTop",
    "~/Library/Containers/com.knollsoft.HighTopLauncher",
    "~/Library/Cookies/com.knollsoft.HighTop.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.HighTop",
    "~/Library/HTTPStorages/com.knollsoft.HighTop.binarycookies",
    "~/Library/Preferences/com.knollsoft.HighTop.plist",
    "~/Library/Saved Application State/com.knollsoft.HighTop.savedState",
  ]
end
