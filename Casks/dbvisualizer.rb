cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2"
  sha256 arm:   "2b1b866935ad8003b45643d59ddcbd81f8b3d9fe188094bcda95fa8609a27595",
         intel: "6544561779e45a3b4e4ac94dabc7e632f51d573d5755dc0ca3980e45bf433e14"

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
