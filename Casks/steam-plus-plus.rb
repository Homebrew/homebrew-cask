cask "steam-plus-plus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.7.1"

  if Hardware::CPU.intel?
    sha256 "f33bbdc8c9463c02e31315a2522331e34a1b25931cbd0575b77459d916772b9d"
  else
    sha256 "96914c17dd50a3db1bc63435caff834cb1a805a2edaa9b7d36d8c333806d5bff"
  end

  url "https://github.com/BeyondDimension/SteamTools/releases/download/#{version}/Steam++_macos_#{arch}_v#{version}.dmg",
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
