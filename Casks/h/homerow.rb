cask "homerow" do
  version "1.3.3"
  sha256 "99001c45cf4dd026d383a342e8fe126c8731a786fc950a1c7518a719d9c597ca"

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
