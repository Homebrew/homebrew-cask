cask "clockify" do
  version "2.5.10"
  sha256 "cf4b8b9312e4f3249ea4668e7a41bd990d91796f1624ab220ddb617fd91f6278"

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
