cask "lulu" do
  version "2.0.0"
  sha256 "0a7b7c2422aeca0b1cb45ae525c3882635fd603887bbb55e06bea81bd9ed69a8"

  # bitbucket.org/objective-see/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.dmg"
  appcast "https://objective-see.com/products/changelogs/LuLu.txt"
  name "LuLu"
  desc "Open-source firewall to block unknown outgoing connections"
  homepage "https://objective-see.com/products/lulu.html"

  depends_on macos: ">= :big_sur"

  app "LuLu.app"

  zap trash: [
    "~/Library/Caches/com.objective-see.lulu",
    "~/Library/Caches/com.objective-see.lulu.helper",
    "~/Library/Preferences/com.objective-see.lulu.plist",
    "~/Library/Preferences/com.objective-see.lulu.helper.plist",
    "/Library/LaunchDaemons/com.objective-see.lulu.plist",
    "/Library/LaunchDaemons/com.objective-see.lulu.configHelper.plist",
    "/Library/Logs/LuLu.log",
  ]
end
