cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.10"
  sha256 arm:   "44ce59bf43c53349b34ad80fff5a0920b7661fc7623accd896efbbe91285ba66",
         intel: "a9bd41faf666301ac7554e388bdce166cf7d831e925b690f49d0cc9b1115724d"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-#{arch}-#{version}.dmg",
      verified: "github.com/session-foundation/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
