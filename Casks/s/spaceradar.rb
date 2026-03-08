cask "spaceradar" do
  arch arm: "arm64", intel: "x64"

  version "6.0.0"
  sha256 arm:   "bbf6a80330208e36ca7ed260ee1c00766dc1f46814632ca709b109a4b9fd31ed",
         intel: "2ecc3b510ff214b25bc3791ea84b4192b0b3839d03e69ae716aaecdcc4d40eda"

  url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-#{version}-mac-#{arch}.zip"
  name "SpaceRadar"
  desc "Disk space and memory visualiser"
  homepage "https://github.com/zz85/space-radar"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "SpaceRadar.app"

  uninstall quit: "com.electron.spaceradar"

  zap trash: [
    "~/Library/Application Support/space-radar",
    "~/Library/Caches/space-radar",
    "~/Library/Preferences/com.electron.spaceradar.plist",
    "~/Library/Saved Application State/com.electron.spaceradar.savedState",
  ]
end
