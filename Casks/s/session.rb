cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.17.17"
  sha256 arm:   "3f559f1b39f6a149cd75b599b7807f3c3d8064c465730c4560f7fcd8aea5c7ce",
         intel: "e2d7ef8785e28ae8803fca3f325261cae713046d69004e86ff969454e7d353ce"

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
