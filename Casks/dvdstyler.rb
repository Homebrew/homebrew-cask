cask 'dvdstyler' do
  version '3.0.4'
  sha256 '12d485facb37c8541585899237391a6b959cf8c9661d3600ca144cd9efc2bae2'

  # sourceforge.net/dvdstyler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/dvdstyler/rss',
          checkpoint: '9290d747cb761e2ebc694879687daa3d01c0c609dcb72558f2c4400790ce4145'
  name 'DVDStyler'
  homepage 'https://www.dvdstyler.org/'

  depends_on macos: '>= :yosemite'

  app 'DVDStyler.app'
end
