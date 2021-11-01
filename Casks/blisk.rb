cask "blisk" do
  version "16.1.94.111"
  sha256 "b0ff50f5501d63071874069dc16111135b69b792d8842ee08be5feb38dadbfab"

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
