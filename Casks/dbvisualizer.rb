cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2.1"
  sha256 arm:   "90d0310618dbcfcbe5a07b65a6bab178c3987b7349e23064c8b2506d268a71fd",
         intel: "88c8ed7a39b4be5fe65d4b2353e5471472c1b7a2d380b1968a78bf8943002043"

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
