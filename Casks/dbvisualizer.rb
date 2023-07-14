cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2.3"
  sha256 arm:   "f0f29a89162952bf63923d0ddb24de91208f7e41c4a112bf253eb55297a1a5db",
         intel: "4ffc872a247108ccdb0949e3b6cba40e1182775f35ad52cd6f28c626a6232672"

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
