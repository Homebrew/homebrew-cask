cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.0.1"
  sha256 arm:   "1727fa51fe0ca388d95930bdf88be34e2d9314c148f1ee2d78331e6a4812bfd0",
         intel: "be527a250a9fba3cac35d3e141800e2f05df11d53b524df86625e10ff6efa3e3"

  url "https://github.com/Mudlet/Mudlet/releases/download/Mudlet-#{version}/Mudlet-#{version}-#{arch}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
