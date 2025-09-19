cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.4"
  sha256 arm:   "4e9b27deba873532c854cafa937c26a32e233e5b5160a477be6e675d8d1fb6f7",
         intel: "8170087ee9a0ed7272bcf48f7890878c7f601f39a0c136f24f5b337f22ce6011"

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
