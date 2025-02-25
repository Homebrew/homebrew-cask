cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.19.3.9730"
  sha256 arm:   "39b128ae201bcd6d2a836a69d9c914283d544d3b285ed1c655016bb602d293a1",
         intel: "14a8075778ad97ba98af9ca6cb1481350485c2dc8aef65e6b6711a884a512a12"

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
