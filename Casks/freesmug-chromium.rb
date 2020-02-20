cask 'freesmug-chromium' do
  version '80.0.3987.100'
  sha256 'baeb263f5dfa3bef6a76fed7f90d4da6af91dea54ba9cac895f5359a4ecd7eab'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
