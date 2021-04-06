cask "openphone" do
  version "2.1.3"
  sha256 "b53d869932b66b9b12e3260cc116ac263e57a02788f2e9356b8ed46995e87c7f"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
