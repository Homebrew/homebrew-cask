cask "knime" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.5.2"
  sha256 arm:   "c74aac7fc512e320b1353242871a60530e8602dcd504f98eca2358d21602d7d1",
         intel: "f8f2590c66c85a89da64e9b7e65a8446a31c210cf5a6bbe27e5c05fd7fce079e"

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
  depends_on macos: ">= :big_sur"

  app "KNIME #{version}.app"

  zap trash: [
    "~/Library/Caches/org.knime.product",
    "~/Library/Preferences/org.knime.product.plist",
    "~/Library/Saved Application State/org.knime.product.savedState",
  ]
end
