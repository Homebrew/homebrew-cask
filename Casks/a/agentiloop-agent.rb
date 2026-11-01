cask "agentiloop-agent" do
  version "1.1.95.295"
  sha256 "85f9f5d4d453db1b5534141b6c6a9f5cfc0c23f7a5771732c115795f144c8f0e"

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
