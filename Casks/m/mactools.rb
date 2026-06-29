cask "mactools" do
  version "1.0.25"
  sha256 "71f3150e40971506411fbd41a23838172a376ec2c4a1fc9f043bd25bdd91e2b1"

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
    "~/Library/Application Support/MacTools",
    "~/Library/Caches/cc.ggbond.mactools",
    "~/Library/HTTPStorages/cc.ggbond.mactools",
    "~/Library/Preferences/cc.ggbond.mactools.plist",
    "~/Library/Saved Application State/cc.ggbond.mactools.savedState",
  ]
end
