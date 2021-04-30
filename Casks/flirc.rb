cask "flirc" do
  version "3.25.3"
  sha256 "ca01961197f99e232e13d27dd5fe198ef84f476268504e2860507b6530a7f101"

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  name "Flirc"
  homepage "https://flirc.tv/"

  livecheck do
    url "https://flirc.tv/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flirc.app"
end
