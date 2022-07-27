cask "steam-plus-plus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.8.1"

  if Hardware::CPU.intel?
    sha256 "02fedeef0dc691a374445e63994cf221fc9b3881f4ea49627ff0c858acb31ee3"
  else
    sha256 "da52c130af85d722528f313bd58c443f564b863bf045a85bd6c5426718afbc3d"
  end

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
