cask "agentiloop-agent" do
  version "1.1.99.299"
  sha256 "1ac9293ffb4727e4237258c9df1eeaced9f484205ec771da372306df1c1d7df0"

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
