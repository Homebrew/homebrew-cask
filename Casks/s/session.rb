cask "session" do
  version "1.12.3"
  sha256 "b92c1c4b14cdf57dce1ecc8639bb249985661895ae4cfa96447dea4f32506589"

  url "https://github.com/oxen-io/session-desktop/releases/download/v#{version}/session-desktop-mac-x64-#{version}.dmg",
      verified: "github.com/oxen-io/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]
end
