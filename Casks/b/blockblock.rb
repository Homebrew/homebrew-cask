cask "blockblock" do
  version "2.4.2"
  sha256 "d236cbe8f93af8a3c9f4c802cc538b99277493384cfb692349bba0d5a0cf07e9"

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
