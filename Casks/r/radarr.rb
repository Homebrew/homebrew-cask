cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.14.0.9383"
  sha256 arm:   "f1623df740cd4bf6f11377fc179f2d56844308085f9fc9bef273c3877938a7c9",
         intel: "3874b11a02b90d9ac91322e888f17960d7304f68b0668b63dc6462d81104829a"

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
