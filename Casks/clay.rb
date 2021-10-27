cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.3"

  if Hardware::CPU.intel?
    sha256 "b931d44e3dd4fef1e04b4ed1791cf05f96b2759f399226d8a660184c5eab090a"
  else
    sha256 "04775efa3008e7f7556b97f71f2d90fbd9370cd142a523d2e65a1e6f90efbfb1"
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
