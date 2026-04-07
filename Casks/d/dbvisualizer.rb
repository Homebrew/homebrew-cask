cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.1"
  sha256 arm:   "60c45eb23059b93b04731b6d1787a893ee1697fd1bfc65653c1caf8830463817",
         intel: "e935a1150efa2ced44ed7f763a25136318f65e27341b4cd9713145d9b73b296e"

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
