cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1.3"
  sha256 arm:   "cb41958f2c720b904a106c5421a373b5bc79cb3316ebbe8ef4050397dc3ca870",
         intel: "24159cdad6edd9fdaf24aa4a9f1e06368f52858bc31e6c0721f90d3c5abb1439"

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
