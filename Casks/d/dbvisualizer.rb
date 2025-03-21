cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.1"
  sha256 arm:   "2c1f18ebf3dc3b030e4a4705b27f5b9c1f2267213825057f7472d5aa34d36f7e",
         intel: "9f5df6713d21a1ac059ca38531b125ed1ac4b8b31c295130aa6b1cbd68438d90"

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
