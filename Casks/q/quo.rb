cask "quo" do
  version "4.1.12"
  sha256 "c2938c18cd29259121d8cd3d9aa522c609727cd0a17fa627796798cd43fb3211"

  url "https://download.quo.com/Quo-#{version}-universal.dmg"
  name "Quo"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.quo.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "Quo.app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
