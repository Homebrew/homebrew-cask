cask "rectangle-pro" do
  version "3.0.15"
  sha256 "a1425213663df1b73cf1ee84fd22957f5918bf5a7096f330774a1965a7363425"

  url "https://rectangleapp.com/pro/downloads/Rectangle%20Pro%20#{version}.dmg"
  name "Rectangle Pro"
  desc "Window snapping tool"
  homepage "https://rectangleapp.com/pro"

  livecheck do
    url "https://rectangleapp.com/pro/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rectangle Pro.app"

  uninstall quit: "com.knollsoft.Hookshot"

  zap trash: [
    "~/Library/Application Support/Rectangle Pro",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot.binarycookies",
    "~/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
