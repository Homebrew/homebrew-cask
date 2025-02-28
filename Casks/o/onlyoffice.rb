cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "8.3.1"
  sha256 arm:   "74965b8778b1b7423163f0deb5525d3f24e522fba47126974234433df51381a2",
         intel: "9d81ec243e7cff8d008628b994fd8e4cc355c097b4e702b5fb6a82f12951915a"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
  ]
end
