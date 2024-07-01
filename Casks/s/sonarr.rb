cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.6.1805"
  sha256 arm:   "62c8a1fbbe6492e49007e7913ecb880d5dd30b44b489c48de3833a61832d84c6",
         intel: "e6faaf7285eef01d00f631eb8c453f39647ca406a77673100c8ebcf2b1a6571e"

  url "https://github.com/Sonarr/Sonarr/releases/download/v#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip",
      verified: "github.com/Sonarr/Sonarr/"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
