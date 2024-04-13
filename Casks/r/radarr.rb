cask "radarr" do
  arch arm: "arm64", intel: "x64"

  version "5.4.6.8723"
  sha256 arm:   "4adde7d215fcc2b30566dce24430d89dc6e7da1ebae0961815b6cdf894f85545",
         intel: "b0b2f32be208b84830b45eb975ff54e264b5806f3ddfad1415527af16fe4d0dc"

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
