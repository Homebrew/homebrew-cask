cask "flirc" do
  version "3.26.4"
  sha256 "558e386bd6733f06cefd6a4c450e282a681b092880b654e1796dccb1708976aa"

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
