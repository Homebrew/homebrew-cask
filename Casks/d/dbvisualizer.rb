cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.4"
  sha256 arm:   "66d7800e94a0c5583b50385d11b2a2ccb29dcf367f69976509e09e1918958873",
         intel: "81b7abb1ad614d8ccc2f01a617d7b6f31d9d48d669d49fd88ff19f9b50109368"

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
