cask 'freesmug-chromium' do
  version '49.0.2623.110'
  sha256 'fb77d97201d8eb54965cb94677e755084d09aa7b7997205a6832335acb35bd9e'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'e27e8381a9ef5d3f4cc0b53fc073e2a33a09db5558a939c198d4c8d8c2eefc71'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
