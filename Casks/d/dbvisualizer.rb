cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.3"
  sha256 arm:   "c482c589d4d90ab2fde70fa26044299d262e22c6e703dffe7a25c6a3d3d9342b",
         intel: "d82b8ab59e924c9728ca24d22d6c1bba5a22ba03b941f3b2c855288095b1fc48"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
