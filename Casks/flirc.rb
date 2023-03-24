cask "flirc" do
  version "3.26.5"
  sha256 "7c561f8c2e62e841e3140de49d6abfd1fddba64f99327a51882c99304992cc08"

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
