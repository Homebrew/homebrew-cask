cask 'dvdstyler' do
  version '3.0.2'
  sha256 '907ac4597652e0bfd38f563875030127e05e7ebb92175ca4e3adfd63263f0ccb'

  # sourceforge.net/dvdstyler was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dvdstyler/DVDStyler-#{version}-MacOSX.dmg"
  appcast 'https://sourceforge.net/projects/dvdstyler/rss',
          checkpoint: 'd70dc1bd3e05c463d20e5cfd065acd593a2dfd7b044f02d18b211305ba02c341'
  name 'DVDStyler'
  homepage 'http://www.dvdstyler.org/'

  depends_on macos: '>= :yosemite'

  app 'DVDStyler.app'
end
