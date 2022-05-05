cask "flirc" do
  version "3.26.3"
  sha256 "fb733eb216e7b7ed1369d4261222b8bb2110b5e4e38d984c9e7a368c2ced3096"

  url "https://flirc.com/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  name "Flirc"
  desc "IR USB receiver configurator"
  homepage "https://flirc.com/"

  livecheck do
    url "https://flirc.com/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flirc.app"
end
