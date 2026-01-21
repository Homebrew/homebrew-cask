cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.3.2"
  sha256 arm:   "25a50d02c34a381035c7bccf22b5099cd29512261aeca5cc17d9c39c8f99d32e",
         intel: "15f177f69b281fd1dd677cdab2cf9d72fe5409e62036a4bc1e53615a4c28039d"

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
