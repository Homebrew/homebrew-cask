cask "session" do
  version "1.15.0"
  sha256 "bf78a795e8ccbd5f2913368c7bd1a393c66d9f800e5ce7c3cdaaa1b3bff4eefc"

  url "https://github.com/session-foundation/session-desktop/releases/download/v#{version}/session-desktop-mac-x64-#{version}.dmg",
      verified: "github.com/session-foundation/session-desktop/"
  name "Session"
  desc "Onion routing based messenger"
  homepage "https://getsession.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Session.app"

  zap trash: [
    "~/Library/Application Support/Session",
    "~/Library/Caches/Session",
    "~/Library/Preferences/com.loki-project.messenger-desktop.plist",
    "~/Library/Saved Application State/com.loki-project.messenger-desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
