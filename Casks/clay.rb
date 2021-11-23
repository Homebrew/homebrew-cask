cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.6.6"

  if Hardware::CPU.intel?
    sha256 "f6274cea31adc89e3f2f7c1602d301160dc4b5edcc3681f36929ef38ae52da23"
  else
    sha256 "87c70135ea182cb1c54439e0e70b952d09f5dd4a78d0556b47efcbf0f94c34cf"
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
