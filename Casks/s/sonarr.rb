cask "sonarr" do
  arch arm: "arm64", intel: "x64"

  version "4.0.18.2971"
  sha256 arm:   "6fdbeff4cc00df1ae934df226ef68dc86d1b67eb430e6a7967e3f5a9f70ddff9",
         intel: "66038bf0e431e15bbbb98072929e3365886a02c4a5f38d6e49931f02b29e2977"

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
