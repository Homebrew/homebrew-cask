cask "smartsvn" do
  version "14.1.0"
  sha256 "9573700e175af50f8fefa6259f6ffd3252e7a1971ae039a4538830f223f47de8"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-macosx-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
    regex(/SmartSVN\s+(\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
