cask "steam-plus-plus" do
  version "2.6.4"
  sha256 "3bf9edc4053ba08b706ee47234a8b4a3c73feb1a952289e82d029bb17217219d"

  url "https://github.com/BeyondDimension/SteamTools/releases/download/#{version}/Steam++_macos_x64_v#{version}.dmg",
      verified: "github.com/BeyondDimension/SteamTools/"
  name "Steam++"
  desc "Steam helper tools"
  homepage "https://steampp.net/"

  depends_on macos: ">= :mojave"

  app "Steam++.app"

  zap trash: [
    "~/Library/Caches/Steam++",
    "~/Library/Preferences/net.steampp.app.plist",
    "~/Library/Saved Application State/net.steampp.app.savedState",
    "~/Library/Steam++",
  ]
end
