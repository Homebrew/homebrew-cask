cask "quo" do
  version "5.5.18"
  sha256 "975dfb764f054a424607f75819d47a0dbf5159088410727b3be093204981699b"

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
