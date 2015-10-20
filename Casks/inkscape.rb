cask :v1 => 'inkscape' do
  version '0.91-1'
  sha256 'a9f6ec70d9fcd16ee2e5ac3539d0ba6daefc6a87923f1dc3c2dfb45b22d4720b'

  # fastly.net is the official download host per the vendor homepage
  url "https://inkscape.global.ssl.fastly.net/media/resources/file/Inkscape-#{version}-x11-10.7-x86_64.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'
  license :gpl

  app 'Inkscape.app'
  # NOTE: running inkscape on the command line requires absolute paths to files
  binary 'Inkscape.app/Contents/Resources/bin/inkscape'

  zap :delete => '~/.inkscape-etc'

  depends_on :x11 => true
end
