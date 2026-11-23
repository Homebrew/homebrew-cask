cask "agent-orchestrator" do
  arch arm: "arm64", intel: "x64"

  version "0.15.5"
  sha256 arm:   "0bd76cf29cf8a831dd1dac5bf3209ad4c6ae0c860145835a6a04896840ab64a9",
         intel: "8f8852defc305327442744e91b4d8e99e9461ee75e578cad90c885633c4813bf"

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
