cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.15.1.9463"
  sha256 arm:   "632c9213f1fa98669e54a4ed705db6d90f636eb761dd76d1431ed578f044908d",
         intel: "9b786cd0b21225385e3a7f477ae0ed772cfaf34ce35c1be2e824d34bb8d66834"

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
