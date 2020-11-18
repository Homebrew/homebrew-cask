cask "openphone" do
  version "2.0.3"
  sha256 "a0965f6f2d484df9692d53aa227060f40daac5cc628e4812f593e3398ebc609e"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
