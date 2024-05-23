cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1.5"
  sha256 arm:   "5d716f9d565b52bec1d50139657f18525845fd44bece7bea18e06df018cd3138",
         intel: "d45470424608ff671e120980b0e50bb5177b9c465f3f56653c35cfb454a79642"

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
