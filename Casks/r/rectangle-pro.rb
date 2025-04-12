cask "rectangle-pro" do
  version "3.50"
  sha256 "f46111a694acc41f41249cbcff5271c6ae971e7348ebd5eef477c5ddf469d600"

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
