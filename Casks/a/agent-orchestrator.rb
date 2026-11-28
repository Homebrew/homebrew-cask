cask "agent-orchestrator" do
  arch arm: "arm64", intel: "x64"

  version "0.15.7"
  sha256 arm:   "be90475ed09721596e8907b53af9858729322cd85b4c0887fa39c0fd37f0087f",
         intel: "59b4dc913118d941f3a309ec3567ed0b49f9d60dd70f4137163dc754546beebd"

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
