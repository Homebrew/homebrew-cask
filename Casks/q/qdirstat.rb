cask "qdirstat" do
  version "2.0"
  sha256 "03ff7fc6e1d5b820ca2b1b2fcb983d0539d86f6b53ff94096eed9ded709b3c88"

  url "https://github.com/jesusha123/qdirstat-macos/releases/download/#{version}/QDirStat.dmg"
  name "QDirStat"
  desc "Disk utilisation visualiser"
  homepage "https://github.com/jesusha123/qdirstat-macos/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "QDirStat.app"

  zap trash: [
    "~/Library/Preferences/com.qdirstat.QDirStat*.plist",
    "~/Library/Preferences/com.yourcompany.qdirstat.plist",
    "~/Library/Saved Application State/com.yourcompany.qdirstat.savedState",
  ]
end
