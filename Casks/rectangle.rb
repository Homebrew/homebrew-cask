cask "rectangle" do
  version "0.36"
  sha256 "4dab921ce53eb0ee5c136317f14c174dbcea0f4fe72260000c3581c978d7ef87"

  # github.com/rxhanson/Rectangle/ was verified as official when first introduced to the cask
  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version}/Rectangle#{version}.dmg"
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
