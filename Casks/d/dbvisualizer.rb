cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.2.1"
  sha256 arm:   "008ecabe0aa35faa8ab7a7b6270cc512de1323c81a81b98c13b0c7dafd30876a",
         intel: "febbe6a65d404aecf3cd713c5aaf5916fc39cb67889af95fc629e8c7a73b837b"

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
