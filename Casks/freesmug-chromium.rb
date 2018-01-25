cask 'freesmug-chromium' do
  version '64.0.3282.119'
  sha256 '0a4962ebae6ac79e4a95dcd2c9782fbb753df6e7cba63afa833b795359ef7f93'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '4c462613e072449aba91fbc33767220cbb78d0b6132eb665a7c848c4b0d748eb'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
