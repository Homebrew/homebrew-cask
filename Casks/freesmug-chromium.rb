cask 'freesmug-chromium' do
  version '76.0.3809.132'
  sha256 'aa6f63dc4ae345b873e32813c2a4d49c7803575c68f020191837e047e9839c09'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
