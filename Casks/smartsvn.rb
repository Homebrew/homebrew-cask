cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.3.0"
  sha256 arm:   "d4826dfb5ba1546a864460cd14d5a70c7172757a1fb7f824d859391ae41f744d",
         intel: "df26df963925eca412b9699b333825d57b6b9f005bdb4a5ec3ade1d91e084acd"

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
