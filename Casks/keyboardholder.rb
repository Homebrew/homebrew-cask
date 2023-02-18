cask "keyboardholder" do
  version "1.10.5"
  sha256 "396e8daf80c009e39f6e5e73f883b37045d2d708ff150cb91d86762cf627a656"

  url "https://github.com/leaves615/KeyboardHolder/releases/download/v#{version}/KeyboardHolder-#{version}.zip",
      verified: "github.com/leaves615/KeyboardHolder/"
  name "KeyboardHolder"
  desc "Switch input method per application"
  homepage "https://keyboardholder.leavesc.com/"

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
