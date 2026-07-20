cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.1"
  sha256 arm:   "1dbbc579cc02c2bb22b51739fc5c13eba5997ad12a2125e54f84f4485f202c9d",
         intel: "73ebf7503dc6be33f351ea6de290b6fa0d13f1b920b044d1bc61f0fa95c362ea"

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

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
