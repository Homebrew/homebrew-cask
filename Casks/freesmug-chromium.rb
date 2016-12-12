cask 'freesmug-chromium' do
  version '55.0.2883.87'
  sha256 'eb213135c2c99d776ee92e6e93af04c97a0596b734502edd114b743b88932ce9'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'bc534be19778e904315ee0b31412aba8ec1a6f287560266a2c47e13a52cea7f0'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
