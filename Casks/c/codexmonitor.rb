cask "codexmonitor" do
  version "0.7.8"
  sha256 "cd6d5dbc5e4f255db755c39dc29b9316b708f479a64a7cbc194ff2470e41390c"

  url "https://github.com/Dimillian/CodexMonitor/releases/download/v#{version}/CodexMonitor.app.tar.gz",
      verified: "github.com/Dimillian/CodexMonitor/"
  name "CodexMonitor"
  desc "Monitor Codex activity"
  homepage "https://www.codexmonitor.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "CodexMonitor.app"
end
