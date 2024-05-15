cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.6.0.8846"
  sha256 arm:   "1396f5d20965a0d36b80391f4d0b39afd88399908130ae35515cc5902bdf9a0e",
         intel: "a469a2113bb97b52ecabac09ef22e74c6f715b6d17543abe928cc9bccc318601"

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
