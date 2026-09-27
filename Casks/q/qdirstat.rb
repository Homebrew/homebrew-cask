cask "qdirstat" do
  version "2.0-macos.3"
  sha256 "83dc0544d3a4df5a1c9de3084c6eb8cec23bf6151657e42d6c567c9ea1b9673a"

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
