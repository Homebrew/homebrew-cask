cask 'freesmug-chromium' do
  version '53.0.2785.89'
  sha256 '47352dd54e99c08232e0ee420c03e68a445221422ddbc93f2fd3ae5420af0903'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'bded032e811f4a98f394830b6cc29b98b0ce9a17c9059a49e48e44ce87e43c28'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
