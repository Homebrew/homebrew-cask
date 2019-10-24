cask 'inkscape' do
  version '0.92.2-1'
  sha256 'faece7a9a5fa9db7724b0c761f7f2014676d00ef8b90a0ef506fa39d09209fea'

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  depends_on x11: true

  app 'Inkscape.app'
  binary 'Inkscape.app/Contents/Resources/bin/inkscape'

  zap trash: '~/.inkscape-etc'
end
