cask "steam-plus-plus" do
  version "3.1.0"
  sha256 "4016ed6bba5f4eef14ee7da550dff2d29a8d85483af2fcad77ebda02ebc0be7d"

  url "https://github.com/BeyondDimension/SteamTools/releases/download/#{version}/Steam++_v#{version}_macos.dmg",
      verified: "github.com/BeyondDimension/SteamTools/"
  name "Steam++"
  desc "Steam helper tools"
  homepage "https://steampp.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Steam++.app"

  zap trash: [
    "~/Library/Caches/Steam++",
    "~/Library/Preferences/net.steampp.app.plist",
    "~/Library/Saved Application State/net.steampp.app.savedState",
    "~/Library/Steam++",
  ]
end
