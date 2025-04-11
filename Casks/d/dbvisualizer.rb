cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.3"
  sha256 arm:   "cf5c8e8cc351ed96e778bd96826fe9ecf75a23ad0445864ab44b136f48822cce",
         intel: "688f677cf5c082c697f8ee72b422be443db6bc7027d5cacd57c55df4310be202"

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
