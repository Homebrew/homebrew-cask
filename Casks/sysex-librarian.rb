cask "sysex-librarian" do
  version "1.5.1"
  sha256 "19d6905404ec1b16815d0ed2fc12aa93a84e6f66fedf3213f23d55f2960d88b0"

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.dmg"
  name "SysEx Librarian"
  desc "Communicate with MIDI devices using System Exclusive messages"
  homepage "https://www.snoize.com/SysExLibrarian/"

  livecheck do
    url "https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

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
