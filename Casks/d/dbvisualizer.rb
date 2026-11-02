cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2.5"
  sha256 arm:   "0a516bd4603cd32f61c92a49d914e0fa69f7ac0807a99aab837dc2398918d76e",
         intel: "881a5df8c6e21ea23c91d4ed76ef380428ca67e1e8120dd2f8e22c0ddd2907ac"

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
