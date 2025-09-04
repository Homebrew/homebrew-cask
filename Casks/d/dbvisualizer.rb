cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.3"
  sha256 arm:   "2db28085927892f2fb9349a0b8d99d19d53288a393def7ea029d319ad3cc627a",
         intel: "53e806339a1531a05f08193e531ba02d5087a985547a1b07cd26b2038e8368d1"

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
