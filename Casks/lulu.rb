cask "lulu" do
  version "2.3.0"
  sha256 "fe278225594a36d50c5c03a1988a4e6a2b95b573eaab3b1c80c634a42244d194"

  url "https://github.com/objective-see/LuLu/releases/download/v#{version}/LuLu_#{version}.dmg",
      verified: "https://github.com/objective-see/LuLu/"
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
