cask "steam-plus-plus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.7.0"

  if Hardware::CPU.intel?
    sha256 "c9d0e92d64a857fb0199e2e55cad4fa82dd92c7f4989b52b918db3f0da62c3d6"
  else
    sha256 "2eedab66805d621f4fe54617f7476a8fc7388c05e7710fea0a999c57c86d84f6"
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
