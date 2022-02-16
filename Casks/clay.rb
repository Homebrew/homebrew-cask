cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.3"

  if Hardware::CPU.intel?
    sha256 "29d59007b76685142267bf15134cf63719e02328bf93d1fe7a7611b7d9d73fb2"
  else
    sha256 "3228d7d05db41baf9f90520526d82968956c1ce9ecfba15a17a45d6064cc6e5a"
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
