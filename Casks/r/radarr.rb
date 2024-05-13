cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.5.3.8819"
  sha256 arm:   "3d71cd613df596d67ae8efef72c61fbd4d5f3b33e45a3097597a27cd73d3bd86",
         intel: "01ede027d8a5f065413a8f856229e9c8b269e6e49ec7a46d53b5093009262210"

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
