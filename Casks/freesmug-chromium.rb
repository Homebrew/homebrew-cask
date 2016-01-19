cask 'freesmug-chromium' do
  version '47.0.2526.111'
  sha256 '71d47d02f868684774b70f4243b1030f7a3efb5557e4684acab246b541bf68ab'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'http://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '366664e93ad47982687fdff3c41e93017f85bf7e18bd88ad2d1d7bba9621f6be'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
