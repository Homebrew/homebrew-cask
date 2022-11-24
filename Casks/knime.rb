cask "knime" do
  version "4.6.4"
  sha256 "4b86bb19c8dcadb15b4549ab3a8fbccdeb92732592194e0a01fb75ab1c774738"

  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg",
      verified: "download.knime.org/analytics-platform/macosx/"
  name "KNIME Analytics Platform"
  desc "Software to create and productionize data science"
  homepage "https://www.knime.com/"

  livecheck do
    url "https://download.knime.org/analytics-platform/macosx/knime-latest-app.macosx.cocoa.x86_64.dmg"
    strategy :header_match
    regex(/knime[._-]v?(\d+(?:\.\d+)+).*?\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
