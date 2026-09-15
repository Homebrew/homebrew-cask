cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.2"
  sha256 arm:   "1b4bf5481b80306645d81fa64b134fc6675be8447229d64c559653b12063f4c2",
         intel: "a694a0831e9b6095e5df3e1381aa356d0ff1fc04ef155b6dcaa2bd21ae82717e"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
