cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.18.1"
  sha256 arm:   "c07fd0d944de540f5e6a408cea351b82579edde28dd49ffa79ceabd82c134080",
         intel: "3c625f505411296ef728c6fe0f494e6643cff4e8267d942bc7bf3f133935edf4"

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
  depends_on macos: :ventura

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
