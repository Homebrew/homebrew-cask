cask :v1 => 'inkscape' do
  version '0.48.5-2'
  sha256 '72191861ee19a4e047d9084c7181a5ccf6e89d9b4410e197a98c2e1027e65e72'

  url "http://downloads.sourceforge.net/inkscape/Inkscape-#{version}+X11.dmg"
  homepage 'http://inkscape.org'
  license :oss

  app 'Inkscape.app'

  zap :delete => '~/.inkscape-etc'

  caveats do
    x11_required
  end
end
