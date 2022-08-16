cask "steam-plus-plus" do
  arch arm: "arm64", intel: "x64"

  version "2.8.4"

  on_intel do
    sha256 "9d07681cb51e68c945b017b684f7394caef94a256a5bbe5e81fe27670e41ea4f"
  end
  on_arm do
    sha256 "b321b7b549680bdfcac8201dd5f1945120f3b30fca033f035387e182801dce74"
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
