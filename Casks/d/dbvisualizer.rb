cask "dbvisualizer" do
  arch arm: "aarch64", intel: "x64"

  version "24.1"
  sha256 arm:   "2ea38b31389387b56e9c3ef93a9c5dbb817cfc1a796468db9675af3a72db8aad",
         intel: "de16135893d0e091a0badcecdf28df91a6c6e77b463494a39f4e78aef0affa0e"

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
