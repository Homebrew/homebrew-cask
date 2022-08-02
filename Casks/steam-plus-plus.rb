cask "steam-plus-plus" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.8.2"

  if Hardware::CPU.intel?
    sha256 "96ea6370596e6c12d475615d062599fd05ba58bde6222de68f0cb54e37d1bc8c"
  else
    sha256 "89b5d716f1c088d4ad350f5a7437660feb1a5eefa669f215659e1a5f0730ed3c"
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
