cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.19.2979"
  sha256 arm:   "fbc2acc3984f12e1bae95f07ad7424425b5f1058fc02f8bb79e709638d2c5c94",
         intel: "ef3025f57f1f2451a393e28871bb67abce057f132d84c2ce174af3656bd7670b"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
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
  depends_on :macos

  app "Sonarr.app"

  zap trash: "~/.config/Sonarr"
end
