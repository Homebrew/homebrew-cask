cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.7.0.8882"
  sha256 arm:   "91625ea9635c9f8f21ab7b960f9df1a05baafd4df2794e4891988dd590f08d48",
         intel: "1a559680348136f0fdd7635108d7e9f35f6eb33c5c37af1053c64812d99fc740"

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
