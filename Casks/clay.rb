cask "clay" do
  arch arm: "-arm64"

  version "1.12.4"
  sha256 arm:   "16e8d204db5aa9fdfccf2cef203e5225e6c47aaeaedb9ed62b8e15f3389c85ed",
         intel: "5cfd5e8b0ff159e1c492a7ab86848f297fe215f08db8722b222bf942d9f796cf"

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
