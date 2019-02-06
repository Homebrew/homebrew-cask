cask 'freesmug-chromium' do
  version '72.0.3626.81'
  sha256 '1f2f121d194ab8e92609e230901f7079a705b0120e47cbcd9b13beb53a203773'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
