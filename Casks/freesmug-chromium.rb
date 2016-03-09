cask 'freesmug-chromium' do
  version '49.0.2623.75'
  sha256 '3a6255f57eb60cd7d105395d0f35e1c2f5d412ad378f451562f745dc23411616'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '3a0466b470ba34b49948ecad3d3735298e3f22b1029657adde95397ba2928c4e'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
