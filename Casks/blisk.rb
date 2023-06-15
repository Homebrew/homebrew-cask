cask "blisk" do
  arch arm: "-m1"

  version "20.1.42.63"
  sha256 arm:   "9a338291a782887737a297bbae32a8f3cda64fc814af94f50f870859127ecebe",
         intel: "93c98f286ce3b13f6d52074697e9b1e7b4e7d644fa3781414b387dab52bdb3fa"

  url "https://bliskcloudstorage.blob.core.windows.net/mac#{arch}-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    regex(/href=.*?BliskInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Blisk.app"

  zap trash: [
    "~/Library/Application Support/Blisk",
    "~/Library/Caches/Blisk",
    "~/Library/Preferences/org.blisk.Blisk.plist",
    "~/Library/Saved Application State/org.blisk.Blisk.savedState",
  ]
end
