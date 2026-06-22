cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "26.2"
  sha256 arm:   "d64b29ee7830d674629c16eca133b22b39c13ef06a19063c573185b207f346fd",
         intel: "c228a2fcf6e8bd0405978e2077e08e774f24ae1968a6e2c91b0b1184fae867e2"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
