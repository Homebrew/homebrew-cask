cask "quo" do
  version "4.4.0"
  sha256 "a5b55f870df3f8cb41512dd2d644c89d71783401701e49e3f92b53cd7178e243"

  url "https://download.quo.com/Quo%20(formerly%20OpenPhone)-#{version}-universal.dmg"
  name "Quo"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.quo.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Quo (formerly OpenPhone).app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
