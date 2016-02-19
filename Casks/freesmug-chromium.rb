cask 'freesmug-chromium' do
  version '48.0.2564.116'
  sha256 'aa6424564910d02291588989ef324e14a8b7e70ae2a8d3c3cb08283e1088d73a'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '7e8bc74ea4d5d138526d369c0a72732a5991ef424d09f02e1511e192c5f1076d'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
