cask "blockblock" do
  version "2.4.4"
  sha256 "e2eb6ab6acef0e4fc563d5596e7dcee8c3d2797896f0d976a8ae27e5faea8ccf"

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
