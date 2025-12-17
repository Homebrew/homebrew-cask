cask "clockify" do
  version "2.12.0"
  sha256 :no_check

  url "https://clockify.me/downloads/ClockifyDesktop.zip"
  name "Clockify"
  desc "Time tracking tool for agencies and freelancers"
  homepage "https://clockify.me/mac-time-tracking"

  livecheck do
    url "https://clockify.me/downloads/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Clockify Desktop.app"

  zap trash: [
    "~/Library/Application Support/coing.ClockifyDesktop",
    "~/Library/Caches/coing.ClockifyDesktop",
    "~/Library/Preferences/coing.ClockifyDesktop.plist",
    "~/Library/Saved Application State/coing.ClockifyDesktop.savedState",
  ]
end
