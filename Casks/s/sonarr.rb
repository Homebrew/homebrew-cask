cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.15.2941"
  sha256 arm:   "71814960634881a75a98cb349fdc4088b56889e670d06b3e292f8d58f180fc1d",
         intel: "4e200e11cdca94a782bce820c1baee16c27af96dab48596362385aaf6b7f06f6"

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
