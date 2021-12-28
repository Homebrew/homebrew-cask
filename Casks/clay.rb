cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.1"

  if Hardware::CPU.intel?
    sha256 "e2e6366095cf41e854ca15b4563e3ff6b9efc1a6775378fea82b0baf673c2a70"
  else
    sha256 "220963032f271c9c243dd46a4de3bd12168f26b2e2ef490bee5a415665517955"
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
