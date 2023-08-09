cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "4.6.4.7568"
  sha256 arm:   "0ba7ebfb42e0c22ea4e98ea041e344621d6f0ab9f1e1e1108887215742119630",
         intel: "e272b4bd492281d549dfecd3e14627a5f02e34419e6f32271cf083be60d6bb9d"

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
