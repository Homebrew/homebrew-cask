cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.5.0"
  sha256 arm:   "a3fedfe305c293314a4ae3d1b9551aacbc9b9c4c724a6ee7fd3df6a7070788c5",
         intel: "3e8d281f43b8d0905f0aefb9ba1e0050ee0e4158cffa19ce352a6880aa5044a9"

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

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
  ]
end
