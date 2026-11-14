cask "agent-orchestrator" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "7be6fb7b9b3c031525872c155542dcd19670c6d9b78e2e70e1aa2640a0851df9",
         intel: "6d810d40be801104409d01ee50b3f685595708def8bace3f1c154f83c6781ddc"

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
