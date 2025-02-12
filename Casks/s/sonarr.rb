cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.13.2932"
  sha256 arm:   "1d0c0b551076a77a1673dd304fb7232e29a2ffd189b47bd06f4a7de469a78ea8",
         intel: "124e60fe60c67618e64b3d55d96c3882b371cd1bb27474f2c339b516046875e1"

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
