cask "steam-plus-plus" do
  version "2.6.5"
  sha256 "b9e23a09c1ddfe254fda43dba16db387514834e67509569f1631e3a325e4ec90"

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
