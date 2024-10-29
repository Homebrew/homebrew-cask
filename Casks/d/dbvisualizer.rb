cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.2.3"
  sha256 arm:   "2fbd12f2e78d3f62c1a103aa385a59a1ab1819d3305eb4f205db97aa74b5dc5a",
         intel: "50132ad7a85be508b6dfc276e2bc44829a8e5d779568aa7c26f8212e0e5c1057"

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
