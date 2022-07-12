cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.5"

  if Hardware::CPU.intel?
    sha256 "33538a6b5d929aef27d113869c741a3422d5f3bbe54ea14357d8e452aac638f2"
  else
    sha256 "70daf73ce20c2a1e8df01469f6094f5ed1422268012e317bee98f06e0863c7be"
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
