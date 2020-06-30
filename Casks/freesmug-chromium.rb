cask 'freesmug-chromium' do
  version '83.0.4103.116'
  sha256 'e004455608855306a89dba71c33c85910a655fc962d949db2b00aca61d474a3e'

  # sourceforge.net/osxportableapps/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  conflicts_with cask: [
                         'chromium',
                         'eloston-chromium',
                       ]

  app 'Chromium.app'
end
