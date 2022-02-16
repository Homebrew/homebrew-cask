cask "keyboardholder" do
  version "1.5.2"
  sha256 "cd4af79730139a157f7453ab3b9b41757b889fc97938e4d28aad212b13311ddf"

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
