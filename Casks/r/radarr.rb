cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.13.1.9378"
  sha256 arm:   "344447db0c445c7224b3b3e83cf311078ece85627948a942090a57917e6cbe0b",
         intel: "78d3e3c510f2a72b71655245816191e99a619a4674cd1361f5608e54630196e2"

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
