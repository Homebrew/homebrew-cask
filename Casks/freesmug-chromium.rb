cask 'freesmug-chromium' do
  version '50.0.2661.86'
  sha256 '7fee63dfc92fcf8f9298c4c785f0e831d90c560712b6981aa2d8c95beda73c16'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '27b37a88af3170c401b9e3787d6e6810fce6c16386eed2cd1dc645a5774b6e97'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
