cask "codexmonitor" do
  version "0.7.62"
  sha256 "d320d7c1117bfe84482d6b172155cb8c59025a40d907357edcbc84bc0a6e0068"

  url "https://github.com/Dimillian/CodexMonitor/releases/download/v#{version}/CodexMonitor.app.tar.gz",
      verified: "github.com/Dimillian/CodexMonitor/"
  name "CodexMonitor"
  desc "Monitor Codex activity"
  homepage "https://www.codexmonitor.app/"

  # The upstream release cadence varies but can sometimes involve several per
  # day, so this minimal throttle rate is intended to dampen bursts of releases.
  livecheck do
    url :url
    throttle 2
  end

  auto_updates true
  depends_on arch: :arm64

  app "Codex Monitor.app"

  zap trash: [
    "~/Library/Application Support/com.dimillian.codexmonitor",
    "~/Library/Caches/com.dimillian.codexmonitor*",
    "~/Library/Preferences/com.dimillian.codexmonitor.plist",
  ]
end
