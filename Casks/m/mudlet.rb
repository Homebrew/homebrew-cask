cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.1.0"
  sha256 arm:   "c27a04f0a6d6a5e43bf1d882e8c269352d6d131d9d93eb037c267a99f1c45ad0",
         intel: "f35a66ef68c6682ec23c0122f56080fb999706f977f9b6b88d58169764275c1e"

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
