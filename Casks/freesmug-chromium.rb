cask 'freesmug-chromium' do
  version '66.0.3359.117'
  sha256 '85e4320708bebdc26c5597c48d54d46f07005d89c873aa36eed7dd1f94e24785'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'e109d61870ff005524d5e2d191fea23a8ee2cb48caf50a9715b894a727341721'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
