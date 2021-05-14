cask "knime" do
  version "4.3.2"
  sha256 "54559ae2c8dc86169b45c3c4ded2e384baecae18e573a22f9dfdb9de378e65c8"

  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg",
      verified: "download.knime.org/analytics-platform/macosx/"
  appcast "https://www.knime.com/downloads/download-knime"
  name "KNIME Analytics Platform"
  desc "Software to create and productionize data science"
  homepage "https://www.knime.com/"

  depends_on macos: ">= :high_sierra"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
