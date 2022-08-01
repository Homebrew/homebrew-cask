cask "blisk" do
  version "19.0.60.43"
  sha256 "a6c96e12b4c42fe26534156278098e883634e03e047011a712f0bdff5ca3d97b"

  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    regex(/href=.*?BliskInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Blisk.app"
end
