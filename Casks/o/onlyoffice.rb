cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "8.3.2"
  sha256 arm:   "f23147d6f64b0a7e66d544b1f2da1cdf5e5e81aef8e95e3bd4209efe14b42dd9",
         intel: "14112b01b6509602ecadac33fdd4cb51d9e7e9d2e36a55fdc5976feb7c02f612"

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
