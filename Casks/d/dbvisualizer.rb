cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.2"
  sha256 arm:   "55a7cb6af5f4380ebd3c002fbb8c9611da5d86130dcf50efbfe741eaf04a1ddb",
         intel: "ff75a59851cfc253c72b4e1e8f32b8f32ad05158122ddaa00f1d44e568bff5f9"

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
