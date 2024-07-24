cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.8.1874"
  sha256 arm:   "56c49c7f48c4e66d939da8796342688c68620d5f35b81165edc5a5d65ea2767f",
         intel: "209d2e5b7d626896b0090ac6bf5501bacd66e445e2fb299646f56c968bfad08f"

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
