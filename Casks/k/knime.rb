cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.4.0"
  sha256 arm:   "2a5f9de12743ce93a64971e922220a303d0de5d65031d1309d6a7cad94511bfa",
         intel: "d152a47b5e7477af76b993605a873405cb3e4bcd4f917d7de2c945cbd315bf8f"

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
