cask "session" do
  version "1.14.5"
  sha256 "96f82e2b7f033d78025bfbacade1029ca88fab2e94cb4db1096eb5b66d3a0997"

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
