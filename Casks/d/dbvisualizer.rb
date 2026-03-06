cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.1"
  sha256 arm:   "9364cd904c399ad998e26fb7a4c78883e5b63050c27f72d52e3fec54da358960",
         intel: "3579985834f60fcb89759a48597a40a42334a5cfcbed36c6a1ba82a7ea27c874"

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
