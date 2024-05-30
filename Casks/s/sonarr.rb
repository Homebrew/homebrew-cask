cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.5.1710"
  sha256 arm:   "5fa3a9d01780f87fa7098fea7922f5245622d66d272ba7c0d232ec67cde05bbd",
         intel: "aba4f1532a0ad398e6bc4ced3995c50af16c2649bfff3c409a95474e279b7d48"

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
