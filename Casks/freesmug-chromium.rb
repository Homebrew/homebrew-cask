cask 'freesmug-chromium' do
  version '72.0.3626.96'
  sha256 'ebdfbaac6ba0b6eab5a62a4ff8666bcaa6d44546bc1c12861ded4a9f77849a5e'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
