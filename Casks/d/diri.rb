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

  # zap removes the app's preferences, caches and session state, including the
  # saved agent logins and the sockets and holders of agent sessions. It leaves
  # ~/Library/Application Support/Dirijor/notes alone: those notes are written
  # by the user, and zap is only run when the user asks for every trace removed.
  zap trash: [
    "~/Library/Application Support/diri",
    "~/Library/Application Support/Dirijor/account-limits.json",
    "~/Library/Application Support/Dirijor/accounts.json",
    "~/Library/Application Support/Dirijor/activity-log.jsonl",
    "~/Library/Application Support/Dirijor/agents.json",
    "~/Library/Application Support/Dirijor/bin",
    "~/Library/Application Support/Dirijor/claude-logins",
    "~/Library/Application Support/Dirijor/codex-logins",
    "~/Library/Application Support/Dirijor/completed-terminals",
    "~/Library/Application Support/Dirijor/computer-use",
    "~/Library/Application Support/Dirijor/cua-driver.sock",
    "~/Library/Application Support/Dirijor/daemon.lock",
    "~/Library/Application Support/Dirijor/daemon.sock",
    "~/Library/Application Support/Dirijor/dirijord-rs.boot.log",
    "~/Library/Application Support/Dirijor/dirijord.boot.log",
    "~/Library/Application Support/Dirijor/dirijord.boot.log.1",
    "~/Library/Application Support/Dirijor/dirijord.log",
    "~/Library/Application Support/Dirijor/dirijord.log.1",
    "~/Library/Application Support/Dirijor/gridview.log",
    "~/Library/Application Support/Dirijor/holders",
    "~/Library/Application Support/Dirijor/hosts.json",
    "~/Library/Application Support/Dirijor/inject",
    "~/Library/Application Support/Dirijor/legacy-remote-migration.json",
    "~/Library/Application Support/Dirijor/logs",
    "~/Library/Application Support/Dirijor/manifests",
    "~/Library/Application Support/Dirijor/mcp-http.key",
    "~/Library/Application Support/Dirijor/mcp-http.port",
    "~/Library/Application Support/Dirijor/message-receipts-v1.sqlite",
    "~/Library/Application Support/Dirijor/notifications.sqlite",
    "~/Library/Application Support/Dirijor/operations-v1.sqlite",
    "~/Library/Application Support/Dirijor/phone-access.token",
    "~/Library/Application Support/Dirijor/prefs.json",
    "~/Library/Application Support/Dirijor/quick-open-index.json",
    "~/Library/Application Support/Dirijor/remote-bindings",
    "~/Library/Application Support/Dirijor/remote.json",
    "~/Library/Application Support/Dirijor/schedules-v1.sqlite",
    "~/Library/Application Support/Dirijor/sessions",
    "~/Library/Application Support/Dirijor/state.json",
    "~/Library/Application Support/Dirijor/state.json.corrupt",
    "~/Library/Application Support/Dirijor/state.lock",
    "~/Library/Application Support/Dirijor/tasks-v1.sqlite",
    "~/Library/Application Support/Dirijor/telemetry",
    "~/Library/Application Support/Dirijor/usage-cache.json",
    "~/Library/Application Support/Dirijor/voices",
    "~/Library/Caches/com.dirijor.diri",
    "~/Library/Caches/diri",
    "~/Library/HTTPStorages/com.dirijor.diri",
    "~/Library/HTTPStorages/com.dirijor.diri.binarycookies",
    "~/Library/Preferences/com.dirijor.diri.plist",
    "~/Library/Saved Application State/com.dirijor.diri.savedState",
    "~/Library/WebKit/com.dirijor.diri",
  ]
end
