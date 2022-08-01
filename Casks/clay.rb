cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.9.14"

  if Hardware::CPU.intel?
    sha256 "6699a8ed97eac21984d2f7bf45f6d645ffcd7648cf143b71e104da1a73f7e5d6"
  else
    sha256 "009f6b441aa8dc16d7703f6a53b58aa3d1751d5725e3ac5ab013ee8aa0cab618"
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
