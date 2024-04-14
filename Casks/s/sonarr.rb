cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.4.1491"
  sha256 arm:   "bd710a92b69ba717165e628cde503acdfd91769389d50243077f449889e1d304",
         intel: "4e688028c307950a2a0a9eff6c1b15446b24f4ccbdd306e4e13c5c35e3914a41"

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
