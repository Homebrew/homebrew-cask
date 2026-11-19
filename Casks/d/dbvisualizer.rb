cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.3"
  sha256 arm:   "7f9b8736ec66457c97589fdc492cdcc71cd0527a690fd0252a02356d6dc7d8c6",
         intel: "0365605323bbfcb80b91fea42bff5c82d08c8d9dc4ce54c775161f0072ea819b"

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
