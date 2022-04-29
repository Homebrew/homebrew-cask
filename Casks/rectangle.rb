cask "rectangle" do
  version "0.55,61"
  sha256 "8ef4c2a709188a231508ac2a94dd59220e61b5f1ae4c162caa13f0dde2997ba1"

  url "https://github.com/rxhanson/Rectangle/releases/download/v#{version.csv.first}/Rectangle#{version.csv.first}.dmg",
      verified: "github.com/rxhanson/Rectangle/"
  name "Rectangle"
  desc "Move and resize windows using keyboard shortcuts or snap areas"
  homepage "https://rectangleapp.com/"

  livecheck do
    url "https://rectangleapp.com/downloads/updates.xml"
    strategy :sparkle
  end

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
