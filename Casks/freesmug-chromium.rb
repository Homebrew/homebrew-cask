cask 'freesmug-chromium' do
  version '58.0.3029.96'
  sha256 'e3a9c917f75a7a27e964d6da004ff740a13fba4a8128a8c2058b0efec05fb45d'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd01f184a87ac7f991e2d363e224397ab48670e75c69ae577b2e1c39ca921b3f8'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
