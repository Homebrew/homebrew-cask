cask "agent-tars" do
  version "1.0.0-alpha.1"
  sha256 "efdc03dc78fe06118f375bd55d7f91c0a34b4f6cf92ed2b9187e904f30bed53b"

  url "https://github.com/bytedance/UI-TARS-desktop/releases/download/Agent-TARS-v#{version}/Agent.TARS-#{version}-universal.dmg"
  name "Agent TARS"
  desc "Multimodal AI agent for GUI interaction"
  homepage "https://github.com/bytedance/UI-TARS-desktop"

  livecheck do
    url :url
    regex(/^Agent[._-]TARS[._-]v?(\d+(?:\.\d+)+(?:[._-]alpha[._-]?\d+)?)$/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Agent TARS.app"

  uninstall quit: "com.bytedance.agenttars"

  zap trash: [
    "~/Library/Application Support/agent-tars",
    "~/Library/Logs/agent-tars",
  ]
end
