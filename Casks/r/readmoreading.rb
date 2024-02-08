cask "readmoreading" do
  version "0.13.68"
  sha256 "ae78a47c6760e53f37b99a54b81356e86d595aa0717c030212c19f1dafc2042b"

  url "https://cdn.readmoo.com/download/apps/desktop/osx64/el/Readmoo_Desktop-#{version}.dmg"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url "https://readmoo.com/download/osx"
    strategy :header_match
  end

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.readmoo.electron.plist",
    "~/Library/Saved Application State/com.readmoo.electron.savedState",
  ]
end
