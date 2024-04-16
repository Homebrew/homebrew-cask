cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1.4"
  sha256 arm:   "ebd4789c678384a378bb2ff4f6faa99e0a5720d4af8cd0a9aa9896b956b51987",
         intel: "963bef594759e8c986d979d85a55536a9dac388128a2f89db3935e45ec5e3708"

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
