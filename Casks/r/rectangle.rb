cask "rectangle" do
  version "0.96"
  sha256 "16a35c22e4541f6277507156472952c45e2be29976d062cf241766913d027179"

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
  depends_on :macos

  app "Rectangle.app"

  uninstall quit:       "com.knollsoft.Rectangle",
            login_item: "Rectangle"

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
