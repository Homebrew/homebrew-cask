cask "clay" do
  version "1.6.1"

  if Hardware::CPU.intel?
    sha256 "c62ad6a7ae16c3b4ac6462fa3f4c022c036423f2d027eab429bab133ad56761c"
    url "https://assets.clay.earth/desktop/mac/Clay-#{version}.dmg"
  else
    sha256 "732bd70180ddb0b623827030aea7385fc9b9efba4a506827e92dc5f2cb004a82"
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
