cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.1"
  sha256 arm:   "bf4bc44a98043af12ee836f9bfcbd3ca448946db7383888e92ab0893f6ec2d29",
         intel: "daec3295401c1f7994d5210fc206a580c95f5815006cf1eb1b28144a876f23af"

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
