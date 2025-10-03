cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.1"
  sha256 arm:   "6b08fdd11cbbd8e7ebcdbdd787ddd12e3f4a46fd2cdc09f0336bfc352bf97e2f",
         intel: "f58c7cb4f394ce06315fc3a2a76a38f31b587b613dd7162660d944b92c695b8d"

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
  depends_on macos: ">= :ventura"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
