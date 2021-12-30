cask "keyboardholder" do
  version "1.5.0"
  sha256 "4823e40c93d2dd8fa2624c2f4ab9003e6417ad538361ce0dc7608b21063cb452"

  url "https://github.com/leaves615/KeyboardHolder/releases/download/#{version}/KeyboardHolder.app.#{version}.zip"
  name "KeyboardHolder"
  desc "Switch input method per application"
  homepage "https://github.com/leaves615/KeyboardHolder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "KeyboardHolder.app"

  zap trash: [
    "~/Library/Application Scripts/cn.leaves.KeyboardHolderLaunchHelper",
    "~/Library/Application Support/cn.leaves.KeyboardHolder",
    "~/Library/Caches/cn.leaves.KeyboardHolder",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/cn.leaves.KeyboardHolder",
    "~/Library/Containers/cn.leaves.KeyboardHolderLaunchHelper",
    "~/Library/Logs/cn.leaves.KeyboardHolder",
    "~/Library/Preferences/cn.leaves.KeyboardHolder.plist",
  ]
end
