cask "blockblock" do
  version "2.5.2"
  sha256 "7e5a332a4da6a22e8b494418c3cac241d24b43176c8bfc4bb2ef8bdc640bd4c7"

  url "https://github.com/objective-see/BlockBlock/releases/download/v#{version}/BlockBlock_#{version}.zip"
  name "BlockBlock"
  desc "Monitors common persistence locations"
  homepage "https://objective-see.org/products/blockblock.html"

  depends_on :macos

  installer script: {
    executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/com.objective-see.blockblock.helper",
    "~/Library/HTTPStorages/com.objective-see.blockblock.helper",
    "~/Library/Preferences/com.objective-see.blockblock.helper.plist",
    "~/Library/Preferences/com.objectiveSee.BlockBlock.plist",
  ]
end
