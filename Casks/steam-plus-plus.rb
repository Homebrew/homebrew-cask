cask "steam-plus-plus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.7.2"

  if Hardware::CPU.intel?
    sha256 "f31fe7ecda1b84aca2cdeeabbb5fc1f3c8c533b1a1a2877ba3da5228068b4ce8"
  else
    sha256 "143a42787341bebf849a9ce754ba2758267b399a394adc016d398e7e81120355"
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
