cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.4"
  sha256 arm:   "e3bf257c54e8dc5d30bd2663ac1be092db8b05eda07fee61d65df0c2b3af8f6a",
         intel: "949be5f7b32666020edf806b8d23e23ca6e7c4d74441c689004777e5de1a94f8"

  url "https://download.knime.org/analytics-platform/macosx/knime_#{version}.app.macosx.cocoa.#{arch}.dmg",
      verified: "download.knime.org/analytics-platform/macosx/"
  name "KNIME Analytics Platform"
  desc "Software to create and productionise data science"
  homepage "https://www.knime.com/"

  livecheck do
    url "https://download.knime.org/analytics-platform/macosx/knime-latest-app.macosx.cocoa.#{arch}.dmg"
    regex(/knime[._-]v?(\d+(?:\.\d+)+).*?\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
