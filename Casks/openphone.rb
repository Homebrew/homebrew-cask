cask "openphone" do
  version "2.0.17"
  sha256 "f3171bc0ddc60d728f0e43b1347c3000654c538b87eba72eb4e311be298cec32"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
