cask "openphone" do
  version "2.0.8"
  sha256 "76ccdd911ca7012a70d2dbb5e4e9b561f8588253581fe20fd276cb2dc310f08f"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
