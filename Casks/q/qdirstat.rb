cask "qdirstat" do
  version "2.0-macos.1"
  sha256 "ae1e417ba5be0b6dfe562ab05573347e900f55d159306da7097d0a8c9ec6ce14"

  url "https://github.com/jesusha123/qdirstat-macos/releases/download/#{version}/QDirStat.dmg"
  name "QDirStat"
  desc "Disk utilisation visualiser"
  homepage "https://github.com/jesusha123/qdirstat-macos/"

  auto_updates true
  depends_on macos: :ventura

  app "QDirStat.app"

  zap trash: [
    "~/Library/Preferences/com.qdirstat.QDirStat*.plist",
    "~/Library/Preferences/com.yourcompany.qdirstat.plist",
    "~/Library/Saved Application State/com.yourcompany.qdirstat.savedState",
  ]
end
