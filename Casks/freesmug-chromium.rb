cask 'freesmug-chromium' do
  version '50.0.2661.94'
  sha256 '05401764a4474bad65f250270d47cb9020331170bbc7bd73409c08075f218679'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '272f90af0a5293d77e87b56dfb2b3d1aadc0352cd4705570f66d43af94cecf29'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
