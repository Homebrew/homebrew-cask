cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.1"
  sha256 arm:   "0ea30b105dd5766c41f07ea4479dd70dd569e4c52340e4cd4b51b8d78384fa73",
         intel: "732829c499a62d5b8b90031d1e077eae4c51ddf3742ae6d6b763f951e8123716"

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
