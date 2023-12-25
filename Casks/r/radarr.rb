cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.2.6.8376"
  sha256 arm:   "f3fb5837df392d20e672fb79ff8c5f7004a0ff868be23e84bcf4d3e856f6f9c5",
         intel: "8f1688ccad85eee915afd1572310f7848ef89f581295be334ef7d251263fea92"

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
