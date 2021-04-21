cask "smartsvn" do
  version "14.0.3"
  sha256 "c38ddac8526a00ea297eb05bde20849e879867047e4833d7dc37c67ce0a3602a"

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
