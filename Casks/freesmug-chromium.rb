cask 'freesmug-chromium' do
  version '62.0.3202.89'
  sha256 '4d09dd096c87c0d0c2cf7742fce2b57b64a03fb08e8b738fc95958b4f9457a82'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '1bf5f5f0d8b69f86c949926d4ac66245ef2ecdc00adaddc330c78752c4cb65e1'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
