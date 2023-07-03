cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.5.2.7388"
  sha256 arm:   "68ea9af3cbd9fa0f9ae1e8f7b46de4873411acd5dcbbb84ef8ebbfab90d55ecc",
         intel: "1bcadc83b6a83f35baf29858aa2b2c4578d6d91407fd822b75e653d44256dfd9"

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
