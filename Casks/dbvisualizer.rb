cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2.2"
  sha256 arm:   "f9872b711f72477e3e8985decd5033be5fa18a80bc28e2ba782eb8cdd5735654",
         intel: "d2e384b12abc7571c749f1ab3c54930071065dd26af496543195792047deddd7"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
