cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "23.2.4"
  sha256 arm:   "d8728ae071efd863b228fde8f4f1c2003fbb8edeb9fcb2a6ac8bdbe2b7187549",
         intel: "eec7242c002d57cc82b4a9afef6cb7bb8bd6a489414911525460d12aa9db6778"

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
