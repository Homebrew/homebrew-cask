cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.3.1"
  sha256 arm:   "27fe905b1d9662557cd8c6ddcd7abe03ffe37e4a582d806707b212e6b9385914",
         intel: "6b3f98c5721165a7a62c5910928836f3a56e722cad22c2db5725b61cbc60e1fa"

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
