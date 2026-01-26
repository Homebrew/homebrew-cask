cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.7"
  sha256 arm:   "2b28f4d11b43240090e2287c8b1c5fb4add84359c87b1cf10b744ef468983f90",
         intel: "b0c3e792298a9e39b6af54ade6ab27881a21beea824e92298914f65b0c6474b9"

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
