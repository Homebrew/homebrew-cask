cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.9.1.9070"
  sha256 arm:   "997f4fef443500bded9d76892436a6aa8660ee5138298c50d35a38144c68adc5",
         intel: "2884486a0d15a30e353c34d57e67e24c803db7c66ba8a6b560ca3325e3ee2cad"

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
