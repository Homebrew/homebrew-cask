cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.14"
  sha256 arm:   "5f02b0bd8ba2ef941717614271348c36e1b1c1886dbb0e8f9204f89987a531b5",
         intel: "020db9068c174d52f3e9d63d62485a09b57f2afc3ee228e91a68957b60abb84d"

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
