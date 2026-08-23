cask "qdirstat" do
  version "2.0-macos.2"
  sha256 "c1f1736eaaf4ed1e67babd3b46f427143a8f2a3432d1dcf257a7d2be1372747d"

  url "https://github.com/jesusha123/qdirstat-macos/releases/download/#{version}/QDirStat.dmg"
  name "QDirStat"
  desc "Disk utilisation visualiser"
  homepage "https://github.com/jesusha123/qdirstat-macos/"

  auto_updates true
  depends_on macos: :ventura

  app "QDirStat.app"

  uninstall quit: "com.qdirstat.QDirStat"

  zap trash: [
    "~/Library/Preferences/com.qdirstat.QDirStat*.plist",
    "~/Library/Preferences/com.yourcompany.qdirstat.plist",
    "~/Library/Saved Application State/com.yourcompany.qdirstat.savedState",
  ]
end
