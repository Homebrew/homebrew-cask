cask "cutter" do
  version "1.11.1"
  sha256 "6f35931d52915ce093825ecad6288c1798ca99af7cffde1592a7e2119deb98b6"

  # github.com/radareorg/cutter/ was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}-x64.macOS.dmg"
  appcast "https://github.com/radareorg/cutter/releases.atom"
  name "Cutter"
  homepage "https://radare.org/cutter/"

  depends_on macos: ">= :sierra"

  app "Cutter.app"

  zap trash: [
    "~/.config/RadareOrg",
    "~/.local/share/radare2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.radare.cutter.sfl*",
    "~/Library/Application Support/RadareOrg",
    "~/Library/Preferences/org.radare.cutter.plist",
    "~/Library/Saved Application State/org.radare.cutter.savedState",
  ]
end
