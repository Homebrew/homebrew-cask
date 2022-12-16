cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "14.0.2"
  sha256 arm:   "d07b39b203c6c3477ebcc250e19784adb430ecd32f027ebbcb8f0c1e26b4fac9",
         intel: "aa71d92fa7519dcf0c654f8e130bf2ac449cc947e02a2415c6c159dd1eac00df"

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
