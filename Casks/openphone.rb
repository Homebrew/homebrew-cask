cask "openphone" do
  version "3.2.6"
  sha256 "7ac63d6c96aef51761a29f72969db75db5f93d03c1864b1e75b0fc670cb7bb96"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "OpenPhone.app"
end
