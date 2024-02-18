cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.3.6.8612"
  sha256 arm:   "1a96af7f7399262fd4f5ca2c65a6cd2ac0c342728426c6632df97ad8306de1b7",
         intel: "f202d66936bff8e57bc6712e38ec48117683a8d9d732cb9d68d92080175c5f89"

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
