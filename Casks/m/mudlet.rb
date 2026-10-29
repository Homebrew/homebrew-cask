cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.0.2"
  sha256 arm:   "277a9689b26babbddc85d05512f9a9798d59ba990502a459b668577dfab4438f",
         intel: "74d611ad4e6ca55beddce23a92ba7cec6a9981ab63c0c44917235a19089831c2"

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
