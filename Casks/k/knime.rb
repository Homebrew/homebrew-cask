cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.1"
  sha256 arm:   "37ea37a31584ae9a158267537c9b3ae5836d207240676be31d56223b81273adb",
         intel: "97e73b54f93e11e6cbc030fc35260cd73fde37e5d3842209959fce8d8377737c"

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

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
