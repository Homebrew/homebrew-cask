cask 'freesmug-chromium' do
  version '57.0.2987.98'
  sha256 'fc75350c1e2f4222a078e9784db7e34b029f87b5987c3b5edc57e71b944949bf'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '6323ca74531d5cc2cdc2e289772917ffc5431cd3aea98c062f588b6bfe8caeb4'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
