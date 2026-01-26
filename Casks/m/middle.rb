cask "middle" do
  version "1.14"
  sha256 "28bf5dd6ec0eaabdcf4bee181dd880d077b2f9e312e652e662dbfa7122a59a83"

  url "https://middleclick.app/downloads/Middle#{version}.dmg"
  name "Middle"
  desc "Add middle click for Trackpad and Magic Mouse"
  homepage "https://middleclick.app/"

  livecheck do
    url "https://middleclick.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Middle.app"

  uninstall quit: "com.knollsoft.Middle"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.MiddleLauncher",
    "~/Library/Application Support/Middle",
    "~/Library/Caches/com.knollsoft.Middle",
    "~/Library/Containers/com.knollsoft.MiddleLauncher",
    "~/Library/Cookies/com.knollsoft.Middle.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Middle",
    "~/Library/HTTPStorages/com.knollsoft.Middle.binarycookies",
    "~/Library/Preferences/com.knollsoft.Middle.plist",
  ]
end
