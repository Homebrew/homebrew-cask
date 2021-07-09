cask "blisk" do
  version "15.1.151.108"
  sha256 "1b92d478ca9d224a972b3f6d2aa2e5972058538b170cc92883f455d9d595d634"

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
