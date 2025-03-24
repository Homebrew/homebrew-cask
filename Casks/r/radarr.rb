cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.21.1.9799"
  sha256 arm:   "37c0fe1136b42db034b9e1332865f1495d237c2b68c6f2b0fe1733eb4d9d3b92",
         intel: "74172ab05021d39ca868f4e0e89b2292daf5c170a4793caa885920d15258626f"

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
