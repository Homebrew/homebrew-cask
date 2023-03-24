cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.1"
  sha256 arm:   "30adc9f4b1a60067ec1ff1d29094195313a9355ca950a13f26c0b65c69b0597b",
         intel: "4976dc319fb762496e68a4d094a4e5f356c2fcf0b0d046d9e3e9a979948f9532"

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
