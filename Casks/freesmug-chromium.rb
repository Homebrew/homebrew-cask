cask 'freesmug-chromium' do
  version '64.0.3282.186'
  sha256 '3dca39ddc1e933138919118a1b00d48e6a44d383f3a556a0ab2b18e2d5806bd8'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '6e174f206370bbdf6b13381b2ec79720b70f700338e28063deb0d13b8f6de205'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
