cask "quo" do
  version "4.2.1"
  sha256 "829cf77049aa782dc11cfc321c0cfd44c44a27bc68c91860a127ce773b5dc43e"

  url "https://download.quo.com/Quo%20(formerly%20OpenPhone)-#{version}-universal.dmg"
  name "Quo"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.quo.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "Quo (formerly OpenPhone).app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
