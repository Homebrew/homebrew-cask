cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2.5"
  sha256 arm:   "c771148792fd8233cae1ef1a05bba60ce819da53f92dfd02136474bfdb02f4c5",
         intel: "686d7b12cc074ba8734f12aa0add80983ef1364549d8c8b5dae89b1f8dc62773"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
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
