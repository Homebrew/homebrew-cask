cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.10.2544"
  sha256 arm:   "dfc051a8390ad677f51c9d431a53020e682d6453d9bc391d335701022b2999f5",
         intel: "cc91452f44a7fed18c43c624f0ca5a625e00120d31b3a78f1ab40b824bdab928"

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
