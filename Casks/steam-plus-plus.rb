cask "steam-plus-plus" do
  arch arm: "arm64", intel: "x64"

  version "2.8.5"
  sha256 arm:   "1989de947fd6608314a0c53dcc6c0d58d98167a5bda0806745d3c12760fc8f5c",
         intel: "bb506447eaf8649ff55d559f9fdbc950c6f5c66d7c0095863ec8e9b1220f0f92"

  url "https://github.com/BeyondDimension/SteamTools/releases/download/#{version}/Steam++_macos_#{arch}_v#{version}.dmg",
      verified: "github.com/BeyondDimension/SteamTools/"
  name "Steam++"
  desc "Steam helper tools"
  homepage "https://steampp.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Steam++.app"

  zap trash: [
    "~/Library/Caches/Steam++",
    "~/Library/Preferences/net.steampp.app.plist",
    "~/Library/Saved Application State/net.steampp.app.savedState",
    "~/Library/Steam++",
  ]
end
