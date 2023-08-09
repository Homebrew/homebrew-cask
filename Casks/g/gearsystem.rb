cask "gearsystem" do
  version "3.4.1"
  sha256 "b5a9a2dc62d721448d315f7116e08433257ee5f849362f570ebe99eb7f425336"

  url "https://github.com/drhelius/Gearsystem/releases/download/gearsystem-#{version}/Gearsystem-#{version}-macOS.zip"
  name "Gearsystem"
  homepage "https://github.com/drhelius/Gearsystem"

  app "Gearsystem-#{version}-macOS/Gearsystem.app"
end
