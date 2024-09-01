cask "steam-plus-plus" do
  version "3.0.0-rc.10"
  sha256 "12beb2bb8b221c2cc8b860ab1a974900a06083b94336a7fe798b19e524185c99"

  url "https://github.com/BeyondDimension/SteamTools/releases/download/#{version}/Steam++_v#{version}_macos.dmg",
      verified: "github.com/BeyondDimension/SteamTools/"
  name "Steam++"
  desc "Steam helper tools"
  homepage "https://steampp.net/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/v?(\d+(?:\.\d+)+(?:-rc\.(\d+)?))/i)
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
