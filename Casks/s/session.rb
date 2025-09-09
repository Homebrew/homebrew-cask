cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.8"
  sha256 arm:   "8805e9ad8424db8e02d2e9eeec487ce01efbd8c12c5f4ada502d03ee6f1a0ded",
         intel: "1780ace3b1d8b6a3aa635209141aa56dca00b8d34dd4f3950075d3fd4f10e845"

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
