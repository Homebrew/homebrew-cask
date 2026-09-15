cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.3"
  sha256 arm:   "be71a96a3d490067c2ace768be6a870bb0d7c45cb53033b110d6e6ba5cd744f7",
         intel: "974e82eec109eef0427c37029da57931cc409b1abec05cf62f6ac9c487f6abf3"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "DbVisualizer.app"

  uninstall quit: "com.dbvis.DbVisualizer"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
