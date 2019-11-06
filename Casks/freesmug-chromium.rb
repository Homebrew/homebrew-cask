cask 'freesmug-chromium' do
  version '78.0.3904.87'
  sha256 'c83d011f2ffd7b99a35a4d364ca75666370e6774954e351a4838c2e54d45f18f'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
