cask "rectangle" do
  version "0.84"
  sha256 "5b4f6e9ffee090abd851066d9193092deb991e96d02dfbdf626db43522b8a018"

  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg",
      verified: "github.com/rxhanson/Rectangle/"
  name "Rectangle"
  desc "Move and resize windows using keyboard shortcuts or snap areas"
  homepage "https://rectangleapp.com/"

  livecheck do
    url "https://rectangleapp.com/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rectangle.app"

  uninstall quit: "com.knollsoft.Rectangle"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.RectangleLauncher",
    "~/Library/Application Support/Rectangle",
    "~/Library/Caches/com.knollsoft.Rectangle",
    "~/Library/Containers/com.knollsoft.RectangleLauncher",
    "~/Library/HTTPStorages/com.knollsoft.Rectangle",
    "~/Library/Preferences/com.knollsoft.Rectangle.plist",
    "~/Library/WebKit/com.knollsoft.Rectangle",
  ]
end
