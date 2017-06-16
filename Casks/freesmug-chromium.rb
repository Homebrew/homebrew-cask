cask 'freesmug-chromium' do
  version '59.0.3071.104'
  sha256 'ce944e3a14c776feee8ada77708973dbd0593717a22a8f6f1a064ed457c31df2'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '749115b377f138af594fc25d246543d210ac5597d9877e89dd29d161f17c6ca0'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
