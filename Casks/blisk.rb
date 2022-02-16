cask "blisk" do
  version "17.0.158.186"
  sha256 "f2abe56e3bd3df90cacfc2c68fa693e0cd963369111fc9d563aed5b4ebc6d400"

  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    regex(%r{href=.*?/BliskInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Blisk.app"
end
