cask "homerow" do
  version "1.4.0"
  sha256 "8d8f672512764c6dac8f3b09bfebb38cabe72bc1e029a34f2f7c2c3e09c361b1"

  url "https://builds.homerow.app/v#{version}/Homerow.zip"
  name "Homerow"
  desc "Keyboard shortcuts for every button on your screen"
  homepage "https://www.homerow.app/"

  livecheck do
    url "https://www.homerow.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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
