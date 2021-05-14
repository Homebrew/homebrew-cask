cask "blisk" do
  version "15.0.221.130"
  sha256 "6d03a38a6e4c755c9b9dd4ee4d45ee5d71cdf0b1c34c7957f91e4f8cdd92fd8b"

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
