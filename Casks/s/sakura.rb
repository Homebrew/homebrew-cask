cask "sakura" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.4"
  sha256 arm:   "4813a0ba7ece2778af0b4dc460e2977f2f0580419224638b9b68f159fbd59c35",
         intel: "b7f76b14fa73714f5d62052fffca49012062222f4f470cb8c253b570d8cc3a33"

  url "https://nya.globalslb.net/natfrp/client/launcher-macos/#{version}/SakuraLauncher_macOS_#{arch}.dmg",
      verified: "nya.globalslb.net/natfrp/client/launcher-macos/"
  name "SakuraLauncher"
  desc "Launcher of SakuraFrp"
  homepage "https://www.natfrp.com/tunnel/download"

  livecheck do
    url "https://nya.globalslb.net/natfrp/client/launcher-macos/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SakuraLauncher.app"

  zap trash: [
    "~/Library/Application Scripts/com.natfrp.launcher.ui",
    "~/Library/Containers/com.natfrp.launcher.ui",
  ]
end
