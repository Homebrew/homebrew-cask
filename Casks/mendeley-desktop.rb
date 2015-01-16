cask :v1 => 'mendeley-desktop' do
  version '1.13.1'
  sha256 'd6db48ca2a5044e69a6897da03e97b200e691b59ae14031fb10f547c08c5d59f'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mendeley Desktop.app'
end
