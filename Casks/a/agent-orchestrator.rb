cask "agent-orchestrator" do
  arch arm: "arm64", intel: "x64"

  version "0.15.3"
  sha256 arm:   "4e66fe5c7d2339974c75dc6aa46af2711285b0fb97670dfee619f7a099d64a09",
         intel: "eb09fee47a02341bb9b16ddadf44e31ed2ab2304bc5657f6a91d20fe2b94b7a4"

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
