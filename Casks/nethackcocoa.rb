cask "nethackcocoa" do
  version "0.3.4"
  sha256 "83a9db8f633996a563fbe939141404625f9cf66180612215484f391df0475e94"

  url "https://github.com/dirkz/NetHack-Cocoa/releases/download/v#{version}/NetHackCocoa-#{version}.dmg"
  name "NetHackCocoa"
  desc "Roguelike RPG"
  homepage "https://github.com/dirkz/NetHack-Cocoa"

  app "NetHackCocoa.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.descy.michael.todotxtmac.sfl2",
    "~/Library/Preferences/com.descy.michael.TodoTxtMac.plist",
  ]
end
