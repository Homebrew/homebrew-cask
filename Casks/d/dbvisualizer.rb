cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.5"
  sha256 arm:   "f6bed5b3d5158b2ac26f80d591b7d9c7c1842aaa678b32ffceb7a61a7f4a9a37",
         intel: "78ba3fc0e484f8492c5a19bcfab8f09cb4ae2c8263f52b9b3a99e70fc3a30b63"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download/"
    regex(/href=.*?dbvis[._-](\d+(?:\.\d+)+)/i)
  end

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
