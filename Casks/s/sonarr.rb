cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.3.1413"
  sha256 arm:   "195acc0c8b2ef2f0d48efda103ce1b6b6c5d39fee7dab1172ad303ac44c70dd0",
         intel: "5a8af11162d413c83fb642a09ef635591f72258036a524003f52d01b750fd519"

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
