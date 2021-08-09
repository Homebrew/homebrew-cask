cask "blisk" do
  version "16.0.79.98"
  sha256 "6a24f0a94c9341480b06087dc2f4816f9265f9ec1082ca0be78ae2104b403e34"

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
