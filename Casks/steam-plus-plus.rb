cask "steam-plus-plus" do
  version "2.6.9"
  sha256 "c03e9eb6f0bc25d7ad20ee1a28f88477b2f5c19866be2db93673b6c31a348114"

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
