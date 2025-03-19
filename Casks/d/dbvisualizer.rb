cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.1"
  sha256 arm:   "2b126cabdcbffaa4c3c0f2baa9c86ba6dfb113400952b9578fa059f4448a5c7d",
         intel: "aeb6ee01f10f11793df9873dc203114baf4d48ef078f07797a744c6d41861e41"

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
