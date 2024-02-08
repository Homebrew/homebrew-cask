cask "sysex-librarian" do
  version "1.5.2"
  sha256 "c74596f1c235792931bfe77424976652e366d5c701afcbe4d2ac77d78eb416b5"

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.dmg"
  name "SysEx Librarian"
  desc "Communicate with MIDI devices using System Exclusive messages"
  homepage "https://www.snoize.com/SysExLibrarian/"

  livecheck do
    url "https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "SysEx Librarian.app"

  uninstall quit: [
    "com.snoize.SnoizeMIDI",
    "com.snoize.SysExLibrarian",
  ]

  zap trash: [
    "~/Library/Caches/com.snoize.SysExLibrarian",
    "~/Library/Preferences/com.snoize.SysExLibrarian.plist",
    "~/Library/Saved Application State/com.snoize.SysExLibrarian.savedState",
  ]
end
