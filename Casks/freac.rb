cask "freac" do
  version "1.1.3a"
  sha256 "6c065681c9ce594048c561deafe15e1f11cf84e9ce8fb4f4a1fece12e5055b9a"

  # github.com/enzo1982/freac/ was verified as official when first introduced to the cask
  url "https://github.com/enzo1982/freac/releases/download/v#{version.delete("a")}/freac-#{version}-macosx.dmg"
  appcast "https://github.com/enzo1982/freac/releases.atom"
  name "fre:ac"
  desc "Audio converter and CD ripper"
  homepage "https://www.freac.org/"

  app "freac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*",
    "~/Library/Preferences/org.freac.freac.plist",
    "~/Library/Saved Application State/org.freac.freac.savedState",
  ]
end
