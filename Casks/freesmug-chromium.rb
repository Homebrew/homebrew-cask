cask 'freesmug-chromium' do
  version '62.0.3202.75'
  sha256 '6592f14e0a412351062ce91ac4b6a57e79cdb8f7b555f504b3b0f809cb0d3fdc'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '141dcbee9fd37091297253c9d3abe616690226830a2f94e858f688790b222b07'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
