cask "openphone" do
  version "2.0.5"
  sha256 "8e2cfa29643595ace976309d6321ef79bfa08bb4f2afcf1a890e1aa2ca1f6b04"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
