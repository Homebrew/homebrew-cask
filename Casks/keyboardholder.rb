cask "keyboardholder" do
  version "1.6.2"
  sha256 "1f381cb3025e1ed8d67ce8e178d5fc4b99565c7401b07586fb844b0c128e5fb0"

  url "https://github.com/leaves615/KeyboardHolder/releases/download/v#{version}/KeyboardHolder-#{version}.zip",
      verified: "github.com/leaves615/KeyboardHolder/"
  name "KeyboardHolder"
  desc "Switch input method per application"
  homepage "http://keyboardholder.leavesc.com/"

  livecheck do
    url "https://keyboardholder.leavesc.com/distribute/update.xml"
    strategy :sparkle
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
