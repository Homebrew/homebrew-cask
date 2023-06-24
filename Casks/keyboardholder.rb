cask "keyboardholder" do
  version "1.12.0"
  sha256 "6f01894b7a77bf21a0816bf185bb22e024bdda804cc89dfb8bf44847caad6368"

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
