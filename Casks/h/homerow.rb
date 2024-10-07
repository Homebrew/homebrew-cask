cask "homerow" do
  version "1.2.2"
  sha256 "463e46c9695857638aa529bf27b3815f2c1fd3babd8887c6e2e5dd7f2584cd02"

  url "https://builds.homerow.app/v#{version}/Homerow.zip"
  name "Homerow"
  desc "Keyboard shortcuts for every button on your screen"
  homepage "https://www.homerow.app/"

  livecheck do
    url "https://www.homerow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Homerow.app"

  zap trash: [
    "~/Library/Application Scripts/com.superultra.HomerowLauncher",
    "~/Library/Application Support/com.superultra.Homerow",
    "~/Library/Caches/com.superultra.Homerow",
    "~/Library/HTTPStorages/com.superultra.Homerow",
    "~/Library/Preferences/com.superultra.Homerow.plist",
    "~/Library/Saved Application State/com.superultra.Homerow.savedState",
  ]
end
