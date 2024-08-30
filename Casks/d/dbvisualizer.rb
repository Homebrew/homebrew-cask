cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.2.2"
  sha256 arm:   "573b30a406321eeeb571b7c51647e42001bf67d5ff1e91476f32471202ad8f97",
         intel: "b679f277876d435136c52fbeb201e949fb127bf0e43d7a07cd8783d0f3963630"

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
