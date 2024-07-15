cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.7.1863"
  sha256 arm:   "3670f078366e583d854017e0979be41c783b641e75a380fb23332c56af8d4839",
         intel: "55ad3aad0bf5374dd85b332dbfba05baeb16a5357c4d1aaea1b69c48d33cdfd5"

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
