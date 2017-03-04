cask 'inkscape' do
  version '0.91-1'
  sha256 '66c9af880f87d5b64006391fc8dd2d3f546d93d6d91235eba7856deacba29862'

  # github.com/inkscape/inkscape/releases/download was verified as official when first introduced to the cask
  url "https://github.com/inkscape/inkscape/releases/download/#{version.split('-').first}-pre.2/Inkscape-#{version}-x11-10.7-x86_64.dmg"
  appcast 'https://github.com/inkscape/inkscape/releases.atom',
          checkpoint: 'a51f39bb4105f44332032e96b5edeb57346c4c8bceac2bc59c7a850a7e9526ec'
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  depends_on x11: true

  app 'Inkscape.app'
  binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

  zap delete: '~/.inkscape-etc'
end
