cask 'freesmug-chromium' do
  version '57.0.2987.133'
  sha256 '60ef3b7f5d604b58be2e4e17d58fbc94353ea4573918cce1f134ae81551a135e'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '82ca911ebc6653dce108e8dc1d52112902ba5c2394b0489b31cf310557b60b91'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
