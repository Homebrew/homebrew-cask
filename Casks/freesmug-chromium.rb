cask 'freesmug-chromium' do
  version '66.0.3359.170'
  sha256 '28096c41e43e3b4245611f8b1d64b77f6ad54c17a9ab7f8f24b7ef07f6355420'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '49dc402e5027e26c52c01ce1996f813a3e49171bb859f05e9f00fbcc48c9498d'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
