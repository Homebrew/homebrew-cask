cask "blisk" do
  version "18.0.194.12"
  sha256 "078bd212f352f953ed5344bf72d896ae31d844f043a442b35918bec722f96d2d"

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
