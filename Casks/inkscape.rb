cask 'inkscape' do
  version '0.91-1'
  sha256 '66c9af880f87d5b64006391fc8dd2d3f546d93d6d91235eba7856deacba29862'

  # inkscape.global.ssl.fastly.net was verified as official when first introduced to the cask
  url "https://inkscape.global.ssl.fastly.net/media/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  depends_on x11: true

  app 'Inkscape.app'
  binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

  zap delete: '~/.inkscape-etc'
end
