cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.8.3.8933"
  sha256 arm:   "1ac7e701d04d740bcbcf043f96d62ad985549b727f2b37a6bbeca8c9cec449e9",
         intel: "a5757aedf171eb28b61abf9c53562d88a61c8cf685e5d7a7e7d0fe876252047e"

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
