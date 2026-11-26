cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.1.2"
  sha256 arm:   "b1ae28d4539c4a6b5a281196c92765e7eeb4cc9544a3e8914808087aadec73d7",
         intel: "7fefede5fa06320fe78ab9ec1564f00f27bcc71151de672fbc856f018e10786d"

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
