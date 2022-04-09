cask "keyboardholder" do
  version "1.5.5"
  sha256 "f58ff4109c7126723f0edc2e4d46e3d9da51aa5e51d6c8af8689d3c59c5262fc"

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
