cask 'inkscape' do
  version '0.92.2-1,11269'
  sha256 'faece7a9a5fa9db7724b0c761f7f2014676d00ef8b90a0ef506fa39d09209fea'

  url "https://inkscape.org/gallery/item/#{version.after_comma}/Inkscape-#{version.before_comma}-x11-10.7-x86_64.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  depends_on x11: true

  app 'Inkscape.app'
  binary "#{appdir}/Inkscape.app/Contents/Resources/bin/inkscape"

  zap delete: '~/.inkscape-etc'
end
