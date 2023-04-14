cask "flirc" do
  version "3.26.7"
  sha256 "a70e8bd7919d36271b43ea52d922cda181286b8adc074029a8b5cc13e9b568c9"

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
