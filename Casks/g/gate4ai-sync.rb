cask "gate4ai-sync" do
  version "0.1.2"
  sha256 "91cedf8156f0938c16648b2bc19187972fd377bd1b748fe6fcb3152a6aee342d"

  url "https://github.com/gate4ai/sync/releases/download/v#{version}/gate4ai-sync-#{version}-universal.dmg"
  name "gate4.ai sync"
  desc "File sync client for the gate4.ai server"
  homepage "https://github.com/gate4ai/server"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "gate4.ai sync.app"

  zap trash: [
    "~/Library/LaunchAgents/ai.gate4.sync.plist",
  ]
end
