cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.4"
  sha256 arm:   "6c149b03987b2aaf7b21a882feb3cc1f07ecc52f18767cfb5fbf3f0baee9c529",
         intel: "94e306eefc34581bb7e03c2557d48156db669e4c0ea9f7df32385c48857a6888"

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

  uninstall quit: "com.dbvis.DbVisualizer"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
