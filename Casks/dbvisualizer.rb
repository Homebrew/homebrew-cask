cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "14.0"
  sha256 arm:   "85484ed1b2613b631399980e915ca5656f963dab86ee09c419e0a011b94bcdf9",
         intel: "693d858e5e9575f85a4b486ae49c14953a433f3e8250d399d27cf55f04c9b2e3"

  url "https://www.dbvis.com/product_download/dbvis-#{version}/media/dbvis_macos-#{arch}_#{version.dots_to_underscores}.dmg"
  name "DbVisualizer"
  desc "Database management and analysis tool"
  homepage "https://www.dbvis.com/"

  livecheck do
    url "https://www.dbvis.com/download"
    regex(/Latest\s*Version:\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "DbVisualizer.app"

  zap trash: [
    "~/.dbvis",
    "~/Library/Preferences/com.dbvis.DbVisualizer.plist",
    "~/Library/Saved Application State/com.dbvis.DbVisualizer.savedState",
  ]
end
