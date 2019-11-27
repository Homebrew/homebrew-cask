cask 'freesmug-chromium' do
  version '78.0.3904.108'
  sha256 '4f2e0bd62cab6c5493f5670a3b6947dc8d82a93b4cb9eb0dd1f837ec4380ba5d'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
