cask "openphone" do
  version "2.0.7"
  sha256 "98aedd8e6497a0fb3ab515f72893a4c89e765033a85c71502042d6861d9c82fd"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
