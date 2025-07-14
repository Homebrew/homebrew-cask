cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.2"
  sha256 arm:   "cc09532f662808ec1bf6ec7010015048d954dacf5745eee87473d6c3716ef4d7",
         intel: "563a100d9ec3d5db359df347687443d33fc27bc3ed5a08045af4f0cc12317be9"

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
