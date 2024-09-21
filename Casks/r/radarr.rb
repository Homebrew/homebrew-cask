cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.10.4.9218"
  sha256 arm:   "8e98e3cad3b3e22bf73be1ceaee0b59e162b78d508841081d4caf7322192431e",
         intel: "94dd8c5927d2dcafeef057eba44e9dc1a73717629846c1ccafd8c6901963bf46"

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
