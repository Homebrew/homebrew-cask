cask "diri" do
  version "0.11.0"
  sha256 "ebc055047592736dd3fd8b63c5e335e044be2cb5310fa67b16296fd8a4f23aa7"

  url "https://github.com/cristicretu/diri/releases/download/v#{version}/diri-#{version}-universal.dmg"
  name "diri"
  desc "Terminal workspace for running coding agents in parallel"
  homepage "https://diri.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "diri.app"

  uninstall launchctl: "com.dirijor.diri.wake"

  # ~/Library/Application Support/Dirijor is intentionally not zapped: it is the
  # daemon's state (sessions, saved agent logins, notes the user wrote) and is
  # shared with the legacy Dirijor.app, so it is left out entirely for now.
  zap trash: [
    "~/Library/Application Support/diri",
    "~/Library/Caches/com.dirijor.diri",
    "~/Library/Caches/diri",
    "~/Library/HTTPStorages/com.dirijor.diri",
    "~/Library/HTTPStorages/com.dirijor.diri.binarycookies",
    "~/Library/Preferences/com.dirijor.diri.plist",
    "~/Library/Saved Application State/com.dirijor.diri.savedState",
    "~/Library/WebKit/com.dirijor.diri",
  ]
end
