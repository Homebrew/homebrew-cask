cask :v1 => 'mendeley-desktop' do
  version '1.12.4'
  sha256 'cfa7e2a1658ca5157e2d678b1b046b18bc59422ab8b24940074fb3c4c77afbf5'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Mendeley Desktop.app'
end
