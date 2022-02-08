cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.1"

  if Hardware::CPU.intel?
    sha256 "8d683d4d5edef370b9adf78d985dd9190474144b4278f227f489a2a04bd1f840"
  else
    sha256 "63a3d5da50c14d5fb4cf2215bbd86bf88c3f68a5fff3e9ca7fdd7cefc7fbb39b"
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
