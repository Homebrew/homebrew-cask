cask "qdirstat" do
  version "1.9-2"
  sha256 "c954d11fca3335073c007c4ba1c8fc4954a1b81fbbf08146bffaa1fe6c2ca721"

  url "https://github.com/jesusha123/qdirstat-macos/releases/download/#{version}/QDirStat-#{version}.dmg"
  name "QDirStat"
  desc "Disk utilisation visualiser"
  homepage "https://github.com/jesusha123/qdirstat-macos/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "QDirStat.app"

  zap trash: [
    "~/Library/Preferences/com.qdirstat.QDirStat*.plist",
    "~/Library/Preferences/com.yourcompany.qdirstat.plist",
    "~/Library/Saved Application State/com.yourcompany.qdirstat.savedState",
  ]
end
