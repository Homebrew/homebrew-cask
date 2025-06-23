cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2"
  sha256 arm:   "62ec6cbac005936d8574c6a6a6ea718a148373afb3cbf40b7231662d9238ab22",
         intel: "d5d26cefb89a4d1b507dfff8aee284e60c053605506695df60809af46c7d5f7b"

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
