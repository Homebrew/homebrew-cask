cask 'pagico' do
  version '9.3.20200518'
  sha256 'cac5ccfe5002ff1dfbd5f952cb4d880baa2c3a81a0a359456935ebf0b4e052d1'

  url "https://www.pagico.com/downloads/Pagico_macOS_r#{version.patch}.dmg"
  appcast "https://www.pagico.com/api/pagico#{version.major}.mac.xml",
          configuration: version.patch
  name 'Pagico'
  homepage 'https://www.pagico.com/'

  depends_on macos: '>= :sierra'

  app 'Pagico.app'
end
