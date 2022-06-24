cask "sysex-librarian" do
  version "1.5"
  sha256 "e69186748389f830d107b430c9a55e385590a1463664c25e8a83fbd036e733d7"

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.dmg"
  name "SysEx Librarian"
  desc "Communicate with MIDI devices using System Exclusive messages"
  homepage "https://www.snoize.com/SysExLibrarian/"

  livecheck do
    url "https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

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
