cask "blisk" do
  arch arm: "-m1"

  version "24.0.411.33"
  sha256 arm:   "fca7dee8b53fb006ece0e3e3e34e74158d0be2e29b5048b9802de7fb3cefafc3",
         intel: "7838f241eea11cc33be92d064ab52f9fdda57dec5b0572993cb6e50f63d8647e"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/installer/?os=mac#{arch}"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end
