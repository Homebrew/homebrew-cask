cask "diri" do
  version "0.10.1"
  sha256 "f32d5f5c29dabc13cd630bf65345b1dce5f391a15dacf490f66fdf8641246dba"

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
