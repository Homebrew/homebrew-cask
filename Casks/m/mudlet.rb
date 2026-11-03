cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.1.1"
  sha256 arm:   "87c8b8ee1728e06fbf0364079946c6a9585e4c00e2946bb46a63d96f62e36eeb",
         intel: "b27e86b5c61b51a40e458598df17e03199d33cd0388b92d44f87e00290b96056"

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
    "~/Library/Caches/mudlet",
    "~/Library/HTTPStorages/org.mudlet.mudlet",
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
