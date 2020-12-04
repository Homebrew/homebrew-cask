cask "openphone" do
  version "2.0.12"
  sha256 "80533cb1a81c2551088cd8358b3c1e00be82d5f916270bf0288911560deb7127"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
