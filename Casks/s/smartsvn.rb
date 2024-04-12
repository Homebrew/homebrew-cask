cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.4.1"
  sha256 arm:   "655de8c2e107db6cc93553e1143c65d8586dd3104d4b31f6a8226b44a7784b9f",
         intel: "68333aedc81e6a8ed880762fb052fe8b783f77e12dc6c7e90f184d5eae463bac"

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
