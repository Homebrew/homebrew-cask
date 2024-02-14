cask "qdirstat" do
  version "1.9"
  sha256 "b05637c023ef9781ea1d45663f228151a7793b79f8af8e8765cf72260cfd74f3"

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
