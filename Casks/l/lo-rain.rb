cask "lo-rain" do
  version "1.5.2"
  sha256 "e1f4614e99054c741b8d343e426a29a31d9005c4f1c637d2de0754f03e5c4f86"

  url "https://lo.cafe/lo-rain-files/lo-rain-#{version}.dmg"
  name "lo-rain"
  desc "App that makes it rain no matter where you are, even over your apps"
  homepage "https://lo.cafe/lo-rain"

  livecheck do
    url "https://lo.cafe/lo-rain-files/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "lo-rain.app"

  zap trash: [
    "~/Library/Caches/lo.cafe.lo-rain",
    "~/Library/HTTPStorages/lo.cafe.lo-rain",
    "~/Library/Preferences/lo.cafe.lo-rain.plist",
    "~/Library/Saved Application State/lo.cafe.lo-rain.savedState",
  ]
end
