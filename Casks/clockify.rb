cask "clockify" do
  version "2.7.11,355"
  sha256 :no_check

  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip",
      verified: "clockify-resources.s3.eu-central-1.amazonaws.com/"
  name "Clockify"
  desc "Time tracking tool for agencies and freelancers"
  homepage "https://clockify.me/mac-time-tracking"

  livecheck do
    url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Clockify Desktop.app"

  zap trash: [
    "~/Library/Application Support/coing.ClockifyDesktop",
    "~/Library/Caches/coing.ClockifyDesktop",
    "~/Library/Preferences/coing.ClockifyDesktop.plist",
    "~/Library/Saved Application State/coing.ClockifyDesktop.savedState",
  ]
end
