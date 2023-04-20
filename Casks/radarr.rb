cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.4.4.7068"
  sha256 arm:   "0e765ed12cdeea15a8436bce17070d4e9c399572dc31d67a4c494421b7841fbe",
         intel: "08f2b5f2b92030152d914bd84ddc03f1c7be57435e4afa36a71153b60497361f"

  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.master.#{version}.osx-app-core-#{arch}.zip",
      verified: "github.com/Radarr/Radarr/"
  name "Radarr"
  desc "Fork of Sonarr to work with movies à la Couchpotato"
  homepage "https://radarr.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Radarr.app"

  zap trash: "~/.config/Radarr"
end
