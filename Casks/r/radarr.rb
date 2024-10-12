cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.12.2.9335"
  sha256 arm:   "83e24ee0f4dd469e3f14e468a07196aff9399e487784fc69698c75efd5dd321f",
         intel: "81e818d2213153208ea336c80311c57582f1247bcf9432eff0a7f86c3475a630"

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
