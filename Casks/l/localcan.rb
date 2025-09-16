cask "localcan" do
  arch arm: "arm64", intel: "x64"

  version "2.6.0"
  sha256 arm:   "7f8830dd4d371476765bd4b5bb4835fddca1883fa8fdb83885c4840b18a7126c",
         intel: "aeca336a22b852e489404fe3ccec3f3bf81663e660cee9b823776a3a5196b356"

  url "https://assets.localcan.com/download/LocalCan-#{version}-#{arch}.dmg"
  name "LocalCan"
  desc "Develop apps with Public URLs and .local domains"
  homepage "https://www.localcan.com/"

  livecheck do
    url "https://www.localcan.com/download"
    regex(/href=.*?LocalCan[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "LocalCan.app"

  zap trash: [
    "~/Library/Application Support/LocalCan",
    "~/Library/Caches/com.electron.localcan*",
    "~/Library/Logs/LocalCan",
    "~/Library/Preferences/com.electron.localcan.plist",
    "~/Library/Saved Application State/com.electron.localcan.savedState",
  ]
end
