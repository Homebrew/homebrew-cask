cask "agentiloop-agent" do
  version "1.1.87.287"
  sha256 "ea2bf3a88c1573d2aaecde6dfcbf982a7aad8282b2a1190b53a347d12b710928"

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
