cask "blockblock" do
  if MacOS.version <= :mojave
    version "0.9.9.4"
    sha256 "6ab3a8224e8bc77b9abe8d41492c161454c6b0266e60e61b06931fed4b431282"

    url "https://bitbucket.org/objective-see/deploy/downloads/BlockBlock_#{version}.zip",
        verified: "bitbucket.org/objective-see/"

    installer script: {
      executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock",
      args:       ["-install"],
      sudo:       true,
    }

    uninstall script: {
      executable: "#{staged_path}/BlockBlock Installer.app/Contents/MacOS/BlockBlock",
      args:       ["-uninstall"],
      sudo:       true,
    }
  else
    version "2.0.1"
    sha256 "66a63c60b6779c49b0c05bad378f752014549501e106cf335d30adee54f7102f"

    url "https://github.com/objective-see/BlockBlock/releases/download/v#{version}/BlockBlock_#{version}.zip",
        verified: "github.com/objective-see/BlockBlock/"

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
  end

  name "BlockBlock"
  desc "Monitors common persistence locations"
  homepage "https://objective-see.com/products/blockblock.html"

  zap trash: "~/Library/Preferences/com.objectiveSee.BlockBlock.plist"
end
