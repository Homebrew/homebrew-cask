cask "keyboardholder" do
  version "1.6.0"
  sha256 "50e3b7c277038527ac8e5d3cab48a1a11b747bfbd03bdfce8ec5ff45a7b30c38"

  url "https://github.com/leaves615/KeyboardHolder/releases/download/#{version}/KeyboardHolder-#{version}.zip"
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
