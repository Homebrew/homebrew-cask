cask "lulu" do
  version "2.1.0"
  sha256 "f57cbe4d5ab6b034155c6de8d2cb514f35ffb75161b867be4c80cecad77814a3"

  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.dmg",
      verified: "bitbucket.org/objective-see/"
  appcast "https://objective-see.com/products/changelogs/LuLu.txt"
  name "LuLu"
  desc "Open-source firewall to block unknown outgoing connections"
  homepage "https://objective-see.com/products/lulu.html"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "LuLu.app"

  uninstall script: {
    executable: "#{appdir}/LuLu.app/Contents/Resources/LuLu Uninstaller.app/Contents/MacOS/LuLu Uninstaller",
    args:       ["-uninstall"],
    sudo:       true,
  }

  zap trash: [
    "~/Library/Caches/com.objective-see.lulu",
    "~/Library/Caches/com.objective-see.lulu.helper",
    "~/Library/Preferences/com.objective-see.lulu.plist",
    "~/Library/Preferences/com.objective-see.lulu.helper.plist",
  ]
end
