cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.16.3.9541"
  sha256 arm:   "dc1fa7f1c9bb2ba440740f1f3aa7b120e6b3dd841c5af770cddb44df4d5156cc",
         intel: "4ef10c338a89f104645bc1e9e92da58af93d7317e76120ac800ffe2b66f366f5"

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
