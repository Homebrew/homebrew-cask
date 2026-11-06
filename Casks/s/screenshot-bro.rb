cask "screenshot-bro" do
  version "4.27,169"
  sha256 "5200ac8b8f5eedd5fa472c097af05347b1fd1d456d4214b90a5b80abf8e15806"

  url "https://downloads.screenshotbro.app/ScreenshotBro-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Screenshot Bro"
  desc "App Store and Google Play screenshot editor"
  homepage "https://screenshotbro.app/"

  livecheck do
    url "https://screenshotbro.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Screenshot Bro.app"

  zap trash: [
    "~/Library/Caches/xyz.tleskiv.screenshot",
    "~/Library/Containers/xyz.tleskiv.screenshot/Data/Library/Caches",
    "~/Library/Containers/xyz.tleskiv.screenshot/Data/Library/Preferences/xyz.tleskiv.screenshot.plist",
    "~/Library/Preferences/xyz.tleskiv.screenshot.plist",
  ]
end
