cask 'dvdstyler' do
  version '3.1'
  sha256 '08ad4af74c8776908b7d2d8930ea1694a38ef0982164d8af26954156358d7ef9'

  # sourceforge.net/dvdstyler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/dvdstyler/rss'
  name 'DVDStyler'
  homepage 'https://www.dvdstyler.org/'

  depends_on macos: '>= :yosemite'

  app 'DVDStyler.app'
end
