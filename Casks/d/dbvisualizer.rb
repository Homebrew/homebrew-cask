cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.3"
  sha256 arm:   "b5287560d42ebeed948264f58665c4f3ded56da1b46ae8c7fbd931e7f320795b",
         intel: "e0511cdcbd4491a06fc095abdf727c74cae9858494e81c0f7427e0a0be0dff0d"

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
