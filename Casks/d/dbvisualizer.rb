cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.3"
  sha256 arm:   "93484a41aea4742e62baaa8022dc6a6e2bdc53b18e5f195b58714bd9452f92a2",
         intel: "7ae6b0e6da3091cb29be755ec9cf77869319a6efe4f2bf5e1ea324cb57b63e1a"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
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
