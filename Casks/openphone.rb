cask "openphone" do
  version "3.2.21"
  sha256 "cb57109461ae75a28cbe501ac81dfa88e4c23bc2bc88e923a7411ca84c980cae"

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
