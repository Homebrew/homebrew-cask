cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "4.21.0"
  sha256 arm:   "f98158d070a44766cb33d9ab82f374d689adec05314d7f0d20b326c4594f40d8",
         intel: "e733dc891b62875657805f96db503dc763539fcdf03e11bffce78767be8e812d"

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
