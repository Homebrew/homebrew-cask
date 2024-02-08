cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1.1"
  sha256 arm:   "399cbf3fa703afb875253e1df9ec12ecae3e16cbe75d12c45a19a52114f4c5b0",
         intel: "59a99efeeb2e8e52ee8f0329544dfb69fd671b5b594fa11a46bbc4580661f855"

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
