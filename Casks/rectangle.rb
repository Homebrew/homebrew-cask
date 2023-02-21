cask "rectangle" do
  version "0.66"
  sha256 "1eb5b86d565627ed5dce05d9662a044e2dcf228d81d061683b7245fb0f920a65"

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
  depends_on macos: ">= :sierra"

  app "Rectangle.app"

  uninstall quit: "com.knollsoft.Rectangle"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.RectangleLauncher",
    "~/Library/Application Support/Rectangle",
    "~/Library/Caches/com.knollsoft.Rectangle",
    "~/Library/HTTPStorages/com.knollsoft.Rectangle",
    "~/Library/Containers/com.knollsoft.RectangleLauncher",
    "~/Library/Preferences/com.knollsoft.Rectangle.plist",
  ]
end
