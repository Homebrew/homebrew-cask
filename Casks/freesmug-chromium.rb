cask 'freesmug-chromium' do
  version '65.0.3325.146'
  sha256 'be0232fe18704f86d92d982c644b75ab2857c4312823f021beddac8729f6fcb5'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '44af479289a3d76683d7b548c5571b5b52761a104a9b7d0e5ebca7862f3af681'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
