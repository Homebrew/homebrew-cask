cask "clockify" do
  version "2.5.3"
  sha256 "84eb48eeb22d7afea3ab9bee3b6069e714b5bb5a8f455081a71a7251cd8ce2bb"

  # clockify-resources.s3.eu-central-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/ClockifyDesktop.zip"
  appcast "https://clockify-resources.s3.eu-central-1.amazonaws.com/downloads/appcast.xml"
  name "Clockify"
  desc "Time tracking tool for agencies and freelancers"
  homepage "https://clockify.me/mac-time-tracking"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Clockify Desktop.app"
end
