cask "middle" do
  version "1.8.9"
  sha256 "3189bec89daea8fb0006d603254203c3bf9704ea8ffc9a39598f0f98182c45d4"

  url "https://middleclick.app/downloads/Middle#{version}.dmg"
  name "Middle"
  desc "Add middle click for Trackpad and Magic Mouse"
  homepage "https://middleclick.app/"

  livecheck do
    url "https://middleclick.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
