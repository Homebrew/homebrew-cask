cask "blisk" do
  version "14.0.71.69"
  sha256 "8e400ced9331629e4da8da81f577fa8ac85254a341a29d631db735ec8d9745c2"

  url "https://bliskcloudstorage.blob.core.windows.net/mac-installers/BliskInstaller_#{version}.dmg",
      verified: "bliskcloudstorage.blob.core.windows.net/"
  name "Blisk Browser"
  desc "Developer-oriented browser"
  homepage "https://blisk.io/"

  livecheck do
    url "https://blisk.io/download/?os=mac"
    strategy :page_match
    regex(%r{href=.*?/BliskInstaller_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Blisk.app"
end
