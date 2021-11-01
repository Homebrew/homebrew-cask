cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.4"

  if Hardware::CPU.intel?
    sha256 "0f0061f68598913d843bde886385759a4214ce2c0a01c638cb5866ffd6f9f8f5"
  else
    sha256 "579fa1f48fc3eae304214c133373792c8f2cf71615ef68106400f65450dd98d3"
  end

  url "https://assets.clay.earth/desktop/mac/Clay-#{version}#{arch}.dmg"
  name "clay"
  desc "Private rolodex to remember people better"
  homepage "https://clay.earth/"

  livecheck do
    url "https://assets.clay.earth/desktop/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Clay.app"

  zap trash: [
    "~/Library/Application Support/Clay",
    "~/Library/Logs/Clay",
    "~/Library/Preferences/com.clay.mac.plist",
    "~/Library/Saved Application State/com.clay.mac.savedState",
  ]
end
