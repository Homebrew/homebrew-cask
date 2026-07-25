cask "quo" do
  version "5.6.3"
  sha256 "5e1363092a47b5c95f6310f1041866a78f6e4a2dd424e1c80a965e16fdb5eff9"

  url "https://download.quo.com/Quo-#{version}-universal.dmg"
  name "Quo"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.quo.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Quo.app"

  zap trash: [
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
