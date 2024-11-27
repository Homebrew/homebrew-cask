cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.11.2680"
  sha256 arm:   "4910647fb867eadde4ec4482c4749accba54269d298e04853627d11fbe5ef9ed",
         intel: "532f33087b532475378e2e9330492ea6ef11a10c86335ac4051e8650b2014a75"

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
