cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.2"
  sha256 arm:   "9e09387fe2361c9ddc49de33fd336129f70d8e2550e448dc2fbfc3e79519c8b4",
         intel: "de0051ef9e7f4ed0d253d40e912eadc9ebd1d487d8601c69b343d1b1632b3b26"

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
