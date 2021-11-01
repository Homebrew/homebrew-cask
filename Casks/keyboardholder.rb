cask "keyboardholder" do
  version "1.3.2"
  sha256 "3f23fbe76bd524fd2db5f6aadcd387a2e2072d9d910a61592330eac593c52f36"

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
