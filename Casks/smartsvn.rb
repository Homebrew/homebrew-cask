cask "smartsvn" do
  version "14.2.0"
  sha256 "d82d5977d3f0dbae215784157f3b27f73fa97d9b5edb554599a3ffbddd88ce98"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-x86_64-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
    regex(/SmartSVN\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
