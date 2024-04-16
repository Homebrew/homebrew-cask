cask "openphone" do
  version "4.0.7"
  sha256 "f2cd1c6fc4cd168b53431c0a1b100a02d9430ec8768a41c62d9ad67b591f87e9"

  url "https://download.openphone.co/OpenPhone-#{version}-universal.dmg"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "OpenPhone.app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
