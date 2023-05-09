cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2"
  sha256 arm:   "75c6e43d5743b75fd92cb279332429622db8ae2fac3a47d8d2bc61f5c788d8f8",
         intel: "4401f9c756c1501909cded0759365f3e6c1bfd16f93a50427be87b9528f4d832"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
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
