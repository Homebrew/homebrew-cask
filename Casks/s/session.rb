cask "session" do
  arch arm: "arm64", intel: "x64"

  version "1.16.5"
  sha256 arm:   "8221eb1da292e976b2994c500201ad47aa071b184f4c96a891553226b8729abb",
         intel: "429960d144633996fd66f2a7f97e796b33ed4d4cecb98b7c1028c19580d7121a"

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
