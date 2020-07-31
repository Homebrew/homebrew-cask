cask "sysex-librarian" do
  version "1.4"
  sha256 "e35dde64dfbfaa1a4cdaa73113c08a7578a3f6c3b31b532e08d35c58f091623e"

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.zip"
  appcast "https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml"
  name "SysEx Librarian"
  homepage "https://www.snoize.com/SysExLibrarian/"

  app "SysEx Librarian.app"

  uninstall quit: [
    "com.snoize.SnoizeMIDI",
    "com.snoize.SysExLibrarian",
  ]

  zap trash: [
    "~/Library/Preferences/com.snoize.SysExLibrarian.plist",
    "~/Library/Caches/com.snoize.SysExLibrarian",
    "~/Library/Saved Application State/com.snoize.SysExLibrarian.savedState",
  ]
end
