cask "agentiloop-agent" do
  version "1.1.97.297"
  sha256 "4c8e71076a64cb2320142d1dff448170418017eedcf24938a3ae8972b237c8b8"

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
