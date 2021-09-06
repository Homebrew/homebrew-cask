cask "clay" do
  version "1.4.9"

  if Hardware::CPU.intel?
    sha256 "58a41027a551eaf430d4589e032dd972c8734bbda6a1fe33db037c44adf2a0fe"
    url "https://assets.clay.earth/desktop/mac/Clay-#{version}.dmg"
  else
    sha256 "ba68525b208df6c7d99fc7e5e5116f0036435ba042340eaa610776fd04ca230e"
    url "https://assets.clay.earth/desktop/mac/Clay-#{version}-arm64.dmg"
  end

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
