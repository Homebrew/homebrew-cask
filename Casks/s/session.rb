cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.5"
  sha256 arm:   "4f9cee8913a3423e2fb8c00cec6b6a0deefa144121ccbacd5306e27b7e6a78e6",
         intel: "4832910a3ab8a3863c745e9a59885febde1953ba3bc4e6b8066078de99db844f"

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
