cask "agent-orchestrator" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4"
  sha256 arm:   "f0ba445ca9cf1276e2bc17320ff33c01d8ad0ad9961df91dc703b8409387e88b",
         intel: "07598edfbb3c77f887f980ab631e289566996d01ae76afd37406e081cd1ad1ce"

  url "https://github.com/OrchestratorInc/agent-orchestrator/releases/download/v#{version}/Agent.Orchestrator-darwin-#{arch}-#{version}.zip"
  name "Agent Orchestrator"
  name "Orchestrator"
  desc "Supervisor for coding agents running in parallel Git worktrees"
  homepage "https://orchestrator.inc/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Agent Orchestrator.app"
  binary "#{appdir}/Agent Orchestrator.app/Contents/Resources/daemon/ao"

  uninstall quit: "dev.agent-orchestrator.desktop"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.agent-orchestrator.desktop.sfl*",
        "~/Library/Caches/agent-orchestrator-updater",
        "~/Library/Preferences/dev.agent-orchestrator.desktop.plist",
        "~/Library/Saved Application State/dev.agent-orchestrator.desktop.savedState",
      ],
      rmdir: "~/.ao"
end
