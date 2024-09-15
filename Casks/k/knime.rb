cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.2"
  sha256 arm:   "8af496c06664f81a6cfca42f2db0bc453b303bbf5465e9c3d1ee8fae1be8dbd8",
         intel: "037fb672920cfabfebaa2f56b2643463a24eaeeb1f0597de2b9f430db3e1ceb5"

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
