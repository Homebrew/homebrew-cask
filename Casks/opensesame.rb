cask "opensesame" do
  version "3.3.5"
  sha256 "4baf3c9eefd75a63408917363a69a601931a23e3bde99034923777d55d4ea846"

  # github.com/smathot/OpenSesame/ was verified as official when first introduced to the cask
  url "https://github.com/smathot/OpenSesame/releases/download/release%2F#{version}/opensesame_#{version}-py37-macos-1.dmg"
  appcast "https://github.com/smathot/OpenSesame/releases.atom"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  app "opensesame.app"
end
