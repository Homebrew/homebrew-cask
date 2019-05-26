cask 'dvdstyler' do
  version '3.1'
  sha256 '451e43650db37b8c23c9eabf9c2451023c9ffb1a3e3349af9ee6412eaee99713'

  # sourceforge.net/dvdstyler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/dvdstyler/rss'
  name 'DVDStyler'
  homepage 'https://www.dvdstyler.org/'

  depends_on macos: '>= :yosemite'

  app 'DVDStyler.app'
end
