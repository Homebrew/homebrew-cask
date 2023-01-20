cask "rectangle" do
  version "0.65,71"
  sha256 "d8796a71fe231200277c09101d8e8172eeacb6b90e300def1bbc282bd1623b53"

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
  depends_on macos: ">= :high_sierra"

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
