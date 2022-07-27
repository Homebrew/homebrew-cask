cask "knime" do
  version "4.6.1"
  sha256 "570a3cd6f2da36acb9dcf99e6612e10ff3f52a4d78be1369525b49a5c181599f"

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
