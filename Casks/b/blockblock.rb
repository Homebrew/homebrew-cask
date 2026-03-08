cask "blockblock" do
  version "2.4.1"
  sha256 "b47f242af4fc3de5938c63ddc3a2cb2fd255a72ff075bb7fe631fb1a2fce4427"

  url "https://github.com/objective-see/BlockBlock/releases/download/v#{version}/BlockBlock_#{version}.zip",
      verified: "github.com/objective-see/BlockBlock/"
  name "BlockBlock"
  desc "Monitors common persistence locations"
  homepage "https://objective-see.org/products/blockblock.html"

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
