cask "openphone" do
  version "4.0.4"
  sha256 "56cc361ac47c3f6bfd5f4a95e45139e0317a1a4ee63fd2edbb86e61a86edfe66"

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
