cask "rectangle" do
  version "0.40"
  sha256 "70ad0351d512e0538d5b3ffc94dd48038d2e5e68077be8dc93f113baa21c3d3e"

  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg",
      verified: "github.com/rxhanson/Rectangle/"
  appcast "https://www.rectangleapp.com/downloads/updates.xml"
  name "Rectangle"
  desc "Move and resize windows using keyboard shortcuts or snap areas"
  homepage "https://rectangleapp.com/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Rectangle.app"

  uninstall quit: "com.knollsoft.Rectangle"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.RectangleLauncher",
    "~/Library/Application Support/Rectangle",
    "~/Library/Caches/com.knollsoft.Rectangle",
    "~/Library/Containers/com.knollsoft.RectangleLauncher",
    "~/Library/Preferences/com.knollsoft.Rectangle.plist",
  ]
end
