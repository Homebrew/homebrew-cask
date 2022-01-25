cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.7.3"

  if Hardware::CPU.intel?
    sha256 "b6df3675b225d5e90fabba3625c52ff93902f8cf6ee4170ba2305575cd7d4477"
  else
    sha256 "4beba03f4f33426a6d54e1c616800dc8aa5bd40e95cecdebee80b9ef194bb591"
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
