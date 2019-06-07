cask 'freesmug-chromium' do
  version '75.0.3770.80'
  sha256 '8d521396bce79ab9bfbe614959d779ab91f90ade20a3a3908bd69acfbdfdc15c'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
