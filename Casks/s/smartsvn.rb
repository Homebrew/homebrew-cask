cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.3.1"
  sha256 arm:   "ad862c460d535d7259ecd7216b5707d8db8802e461c7d995c82a7b44472afc70",
         intel: "c43ab4579b6fae09097bafb75c24a3bc3c9891d5cf2115069f8a99967fa2789e"

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
