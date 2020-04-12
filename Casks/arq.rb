cask 'arq' do
  version '6.1.6'
  sha256 '66381156ae3db5c53179f2d482b7a22e8d07a16b791826d83567f76be798cd52'

  url "https://www.arqbackup.com/download/arqbackup/Arq#{version.major}.pkg"
  appcast 'https://www.arqbackup.com/'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'

  auto_updates true

  pkg "Arq#{version.major}.pkg"

  uninstall pkgutil: 'com.haystacksoftware.Arq'
end
