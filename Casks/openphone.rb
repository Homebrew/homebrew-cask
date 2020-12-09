cask "openphone" do
  version "2.0.16"
  sha256 "fcf64cd3a731689a82c0a8a355fe788393a69858eab9d3b8ff6839d34ec051d6"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
