cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "4.21.1"
  sha256 arm:   "884ee6d4242460f35234dda84b41a20cb90073a692e6ddcddc11625473bdea5f",
         intel: "5ada4b3cbc4400eb337e9741d8cffc491b2f7454ad9231f03742e26c528c4b0a"

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
