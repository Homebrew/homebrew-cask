cask "agentiloop-agent" do
  version "1.1.98.298"
  sha256 "bec994b5dba692ada3b238b43411ed8a0a82a41c6e3e832437c13ed52ae32422"

  url "https://github.com/AgentiLoop/Agent/releases/download/v#{version}/Agent-v#{version}-macOS.dmg"
  name "Agent!"
  name "AgentiLoop Agent!"
  desc "Autonomous agent"
  homepage "https://github.com/AgentiLoop/Agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Agent!.app"

  zap trash: [
    "~/Library/Caches/Agent.app.toddbruss",
    "~/Library/HTTPStorages/Agent.app.toddbruss",
    "~/Library/HTTPStorages/Agent.app.toddbruss.binarycookies",
    "~/Library/Preferences/Agent.app.toddbruss.plist",
  ]
end
