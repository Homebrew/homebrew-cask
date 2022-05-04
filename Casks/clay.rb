cask "clay" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.8.7"

  if Hardware::CPU.intel?
    sha256 "49d8175189d52a3962afea21d810521015bdefbb5302ca842b932ab2dc98d5bf"
  else
    sha256 "6c2186287d4138be663cf5d71c1d4df3d56b7521fc89836c598896a0b6c7e0bc"
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
