cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "4.22.0"
  sha256 arm:   "54d976936d9ad54cc1ddd65d5e1cc2e3253d84646430636d3237455a10261bdb",
         intel: "64371626f0af7a3ab2f276100e57f6d44344b157cd3f405601955677e64ac6d7"

  url "https://github.com/Mudlet/Mudlet/releases/download/Mudlet-#{version}/Mudlet-#{version}-#{arch}.dmg",
      verified: "github.com/Mudlet/Mudlet/"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
