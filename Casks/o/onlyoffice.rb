cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "8.2.0"
  sha256 arm:   "eb32bd0b17971b8ad2eca5cbea8554b08e6395bfe37d5d5194902b520dd69213",
         intel: "5c25589c0d18950b88aaff06ce476fa5e662ece3bdf15904b0e519277a3240b2"

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
