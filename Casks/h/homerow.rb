cask "homerow" do
  version "1.5.1"
  sha256 "37ee3cb8663c9997cc38b5bec151bd4f2be99a295004aa5916e809381f6dfd40"

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
