cask "clockify" do
  version "2.5.6"
  sha256 "4b47a46231819f805a9fd6124c343f6a5e5887769cb1ce6c5c949b142e375687"

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
