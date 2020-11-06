cask "knime" do
  version "4.2.3"
  sha256 "2d89569a5d8d6008bef0791ba0e1d4bc40ad7bd8a08aedea24ff05087d92b908"

  # download.knime.org/analytics-platform/macosx/ was verified as official when first introduced to the cask
  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.x86_64.dmg"
  appcast "https://www.knime.com/downloads/download-knime"
  name "KNIME Analytics Platform"
  desc "Software to create and productionize data science"
  homepage "https://www.knime.com/"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
