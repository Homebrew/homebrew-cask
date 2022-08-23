cask "steam-plus-plus" do
  arch arm: "arm64", intel: "x64"

  version "2.8.4"
  sha256 arm:   "b321b7b549680bdfcac8201dd5f1945120f3b30fca033f035387e182801dce74",
         intel: "dbe227f9d2d819698744cca32b6c52473b88058249480a226501adde8c395b86"

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
