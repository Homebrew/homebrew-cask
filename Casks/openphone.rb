cask "openphone" do
  version "3.1.4"
  sha256 "9c505a63ddb909e3a675b9150a9238a388e7813bb1599407301742c203756a0e"

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
