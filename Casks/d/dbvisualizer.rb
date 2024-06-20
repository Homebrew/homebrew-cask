cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.2"
  sha256 arm:   "cbacbc5d7cf4fbda52d0696de1d1e2345594372dd5f825bde6eb8a898d450123",
         intel: "7298a375f924b6162434fc0c661cfaacf91ecc7eacccb60ff1ca9567122b6d55"

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
