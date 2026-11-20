cask "agent-tars" do
  version "1.0.0-alpha.10"
  sha256 "4499bd0b523bb89f8adfcd3536b13ad95c03d4bf77c9ae0c3f321eeca5a0f869"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/Agent-TARS-v#{version}/Agent-TARS-#{version}-universal.dmg"
  name "Agent TARS"
  desc "Multimodal AI agent for GUI interaction"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  deprecate! date: "2026-11-14", because: :discontinued

  auto_updates true
  depends_on :macos

  app "Agent TARS.app"

  uninstall quit: "com.bytedance.agenttars"

  zap trash: [
    "~/Library/Application Support/agent-tars",
    "~/Library/Logs/agent-tars",
  ]
end
