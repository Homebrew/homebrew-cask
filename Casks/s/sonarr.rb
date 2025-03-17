cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.14.2939"
  sha256 arm:   "72b0354b0520d6040f0ef8ae426910399b450e6f0be461c4a4df2696db756810",
         intel: "9ca10a34c0233bfec618eb42da22f74a0f472bcb12d7b661593600fb9df09d8c"

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
