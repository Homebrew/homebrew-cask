cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.4.0"
  sha256 arm:   "74f7444d88e4c18d652cac43712ef09780e9f9404509162ea637f05bdff8a9c4",
         intel: "cf9fabf75b897abfd23362603a8b15e32a0994479ae22e8393ad36ea1f001317"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/download/"
    strategy :page_match do |page|
      page.scan(/smartsvn[._-]#{arch}[._-](\d+(?:_\d+)+).dmg/i)
          .map { |match| match&.first&.tr("_", ".") }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
