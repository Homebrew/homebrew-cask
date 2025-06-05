cask "openphone" do
  version "4.0.25"
  sha256 "f908fc3bd391c4fb00008b6e5eaa4e2dc5d4d89f78d9bbd7ea414cf2a73e5dc4"

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
