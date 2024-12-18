cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.2"
  sha256 arm:   "39a1bebd0c33c35bee76266e658a7e5b85f04d6f04dd8124a258419f75f1bfd9",
         intel: "70bd25b579608ca8802beaa4220d8f7ab02553525e298ad0bdf1631a3b4b5046"

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
