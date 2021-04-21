cask "sysex-librarian" do
  version "1.4.1"
  sha256 "dbb1d9cb1c79cb873cb768c775a441b0da866f356cc18d697e33fc300f6b789a"

  url "https://www.snoize.com/SysExLibrarian/SysExLibrarian_#{version.dots_to_underscores}.zip"
  name "SysEx Librarian"
  homepage "https://www.snoize.com/SysExLibrarian/"

  livecheck do
    url "https://www.snoize.com/SysExLibrarian/SysExLibrarian.xml"
    strategy :sparkle
  end

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
