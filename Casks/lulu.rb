cask "lulu" do
  version "1.2.3"
  sha256 "9c7bf4333af8dc7330614f2c9a389feac27334bc07f4b6039107b97eb476a3df"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.zip"
  appcast "https://objective-see.com/products/changelogs/LuLu.txt"
  name "LuLu"
  desc "Open-source firewall to block unknown outgoing connections"
  homepage "https://objective-see.com/products/lulu.html"

  depends_on macos: ">= :sierra"

  installer script: {
    executable: "#{staged_path}/LuLu Installer.app/Contents/MacOS/LuLu Installer",
    args:       ["-install"],
    sudo:       true,
  }

  uninstall script: {
    executable: "#{staged_path}/LuLu Installer.app/Contents/MacOS/LuLu Installer",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/com.objective-see.lulu",
    "~/Library/Caches/com.objective-see.lulu.helper",
    "~/Library/Preferences/com.objective-see.lulu.plist",
    "~/Library/Preferences/com.objective-see.lulu.helper.plist",
    "/Library/LaunchDaemons/com.objective-see.lulu.plist",
    "/Library/LaunchDaemons/com.objective-see.lulu.configHelper.plist",
    "/Library/Logs/LuLu.log",
  ]

  caveats do
    kext
  end
end
