cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.6"

  if Hardware::CPU.intel?
    sha256 "4ad06f447486de6376ee3ee57cbb0f19a44cc794d0992e587af103deff18c8db"
  else
    sha256 "ab8929259da524a7a6d3fcc6357a464b6b983861123e89006938ddea0d816525"
  end

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
