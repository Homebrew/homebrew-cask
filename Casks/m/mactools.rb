cask "mactools" do
  version "1.3.0"
  sha256 "ba541e628bac48f8943563dd0782405b1caa0282cd69fd01925cce88cdbed2c3"

  url "https://github.com/ggbond268/MacTools/releases/download/v#{version}/MacTools.dmg"
  name "MacTools"
  desc "Menu bar toolbox"
  homepage "https://github.com/ggbond268/MacTools"

  # The upstream repository also contains tags like `plugins-1.2.3`, so we
  # only match the main version tags that correspond to app releases.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacTools.app"

  uninstall quit: "cc.ggbond.mactools"

  zap trash: [
    "~/Library/Application Scripts/cc.ggbond.mactools.right-click.finder-sync",
    "~/Library/Application Support/MacTools",
    "~/Library/Caches/cc.ggbond.mactools",
    "~/Library/Containers/cc.ggbond.mactools.right-click.finder-sync",
    "~/Library/HTTPStorages/cc.ggbond.mactools",
    "~/Library/Preferences/cc.ggbond.mactools.plist",
    "~/Library/Preferences/cc.ggbond.mactools.right-click.finder-sync.plist",
    "~/Library/Saved Application State/cc.ggbond.mactools.savedState",
  ]
end
