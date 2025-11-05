cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.16.2944"
  sha256 arm:   "88f3fed9de4e5bce11ce735bc7d34d6f7f14504108c0fed86ab12bc9558a731d",
         intel: "b17b90e163e89bb438c1ffd896ead16ffce96b6fb27c05dc96acef80bc84e06f"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://github.com/Sonarr/Sonarr/releases/download/v#{version}/Sonarr.main.#{version}.osx-#{arch}-app.zip",
      verified: "github.com/Sonarr/Sonarr/"
  name "Sonarr"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  conflicts_with cask: "sonarr@beta"

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
