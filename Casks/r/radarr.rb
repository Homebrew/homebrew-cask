cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.11.0.9244"
  sha256 arm:   "43f59251be21aaf062c3330c4277a6082cbe6ab431b62685c081009de0a2d050",
         intel: "020fb573edd297b9e8c97c5e1f9a51b9f9555a09771f040c2be831d34c9e79c9"

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
