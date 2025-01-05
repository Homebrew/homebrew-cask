cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.17.2.9580"
  sha256 arm:   "2de9d0b5ca224525125067d9a12198af4c69234c4b2c061abf5d570261a42721",
         intel: "352c553b9b28b771f1de489f57c66a4186f12560cd74f32dacb936b2eefd16d2"

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
