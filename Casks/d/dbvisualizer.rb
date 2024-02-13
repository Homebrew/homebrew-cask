cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1.2"
  sha256 arm:   "5864b6f2dbdb054f74b3d9b3247bbb16fbcc7615b7d5105e4dfc4ee92396c713",
         intel: "208cd5201f3388a8fb08acd02a36e590902dbe1b85091584402a91560747e834"

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
