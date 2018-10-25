cask 'freesmug-chromium' do
  version '70.0.3538.77'
  sha256 'b3cf352b2c4e7ac7dc89fd22bf7891e9ffeb9239641174a8c36d255d6e7d829b'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
