cask "knime" do
  version "4.5.0"
  sha256 "c74b770fc49743f344c671e72eda532ae7b560e975eddad8339d19b10469f848"

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
