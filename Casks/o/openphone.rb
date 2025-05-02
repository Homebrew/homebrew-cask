cask "openphone" do
  version "4.0.18"
  sha256 "12d68218bbab5012a561ee084e58dfc6ad8c5f5f4b2497d1492540f61149b441"

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
