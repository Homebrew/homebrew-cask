cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "14.0.3"
  sha256 arm:   "2c2a33879b42a827d080160f3f5ef9ba4839c185a99d822a854f8873b004bb42",
         intel: "3b366473ae9b22a4a6910e61a10ecc961f7a337e02aa36045bb126bc9cc1f488"

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
