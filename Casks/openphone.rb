cask "openphone" do
  version "2.1.2"
  sha256 "470b9da7ac35412ecaeebd8657d91887c4b2c6890f57a64552c67fcc662f7bfd"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
