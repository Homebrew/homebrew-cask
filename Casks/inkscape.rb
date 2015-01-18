cask :v1 => 'inkscape' do
  version '0.48.5-2'
  sha256 '72191861ee19a4e047d9084c7181a5ccf6e89d9b4410e197a98c2e1027e65e72'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/inkscape/Inkscape-#{version}+X11.dmg"
  homepage 'http://inkscape.org'
  license :oss

  app 'Inkscape.app'

  zap :delete => '~/.inkscape-etc'

  depends_on :x11 => true
end
