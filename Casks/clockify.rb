cask "clockify" do
  version "2.5.2"
  sha256 "9c0784144d0ebf77bf34934beb30104056721541b87ef786e1b47aa320c8db66"

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
