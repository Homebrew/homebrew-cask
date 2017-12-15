cask 'freesmug-chromium' do
  version '63.0.3239.108'
  sha256 '789a2ec9b753b0448ec27665b30aae2c597c6f98ed2d906e2a54e1bd40c82733'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '2aa7f29434fec83c60470a5686e5aa0adec5962d8a019f3e588dfc9d65672115'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
