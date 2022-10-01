cask "knime" do
  version "4.6.3"
  sha256 "989ff1d99ad76a6a9a0aabfb0a7e5d5b89cfb8f5f259faa64940df8df51e6179"

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
