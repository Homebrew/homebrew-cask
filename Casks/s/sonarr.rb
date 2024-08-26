cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.9.2244"
  sha256 arm:   "c656ccd2d9ddfb91012cad523ddc1a8446702ff788c415840462e5ad260441b6",
         intel: "ea394bc7e95c02d522d070a66bc4263c9c97ce30a82f5ad1955b5c6e592fbfda"

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
  conflicts_with cask: "sonarr@beta"
  depends_on macos: ">= :catalina"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
