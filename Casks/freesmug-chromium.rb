cask 'freesmug-chromium' do
  version '60.0.3112.101'
  sha256 'e179eff2d0a7853288cffee2e67b65e677fb390b1331bc3c596709652368f289'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'f933bbffa9233fea88cb909ac574940d3809727ad5ebf7c61c1fd707a035ccd6'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
