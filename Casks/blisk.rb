cask "blisk" do
  version "19.1.122.126"
  sha256 "58ae5f2e61b4ea478bf8b8e2884ec14d537bb8f8618672a711e7fc8b6536b700"

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
