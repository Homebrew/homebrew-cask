class Inkscape < Cask
  version '0.48.2-1'
  sha256 'dc45811c450687cf2a455decc047b27a53f79cc926cd3a3c57c60e757e5710f8'

  url 'https://downloads.sourceforge.net/inkscape/Inkscape-0.48.2-1-SNOWLEOPARD.dmg'
  homepage 'http://inkscape.org'

  link 'Inkscape.app'

  caveats do
    x11_required
  end
end
