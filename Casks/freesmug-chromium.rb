cask 'freesmug-chromium' do
  version '72.0.3626.109'
  sha256 '6bb5153908c8200002dbd90e795a4be9ff8e17bdd9218ee274832a96a41b38c6'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
