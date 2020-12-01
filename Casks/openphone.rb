cask "openphone" do
  version "2.0.9"
  sha256 "56543910515f1dd67620cacfc7aca0b9330f9880016f6c09d5172bee106c986c"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
