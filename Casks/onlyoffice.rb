cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.4.1"
  sha256 arm:   "f0b77b3bfb28907295aeda0e123168bf9b90f940ed33094d8b3cbbaca0dbfb41",
         intel: "2808896c54c397a57b661c3941f1d2661721ac5fecb552757730fe69dce2e20f"

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
