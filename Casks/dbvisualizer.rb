cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "14.0.1"
  sha256 arm:   "c2a2cf33ff3aafde894c8059c01826113740c94f2a0a69c50940568a2b2c469d",
         intel: "691bdaedf7c9b22de6fe178f29a8e6946842f02c06f17e754bfb465239311c52"

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
