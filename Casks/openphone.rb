cask "openphone" do
  version "2.0.11"
  sha256 "cb0a800b3742351d787e62c8ba25bc3dd75a861ae77fbc11f86b6d9ac0aaabb2"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
