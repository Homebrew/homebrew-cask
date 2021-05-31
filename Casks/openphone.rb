cask "openphone" do
  version "3.1.7"
  sha256 "8466b4730490f17c91db9b4fb2ac3d6640e5c8414b674ccdbd9d78ebf468b2b1"

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
