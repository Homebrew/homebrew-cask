cask 'freesmug-chromium' do
  version '51.0.2704.84'
  sha256 '46a2ea7af13708e7c1b4ab9f89a630bb199e4583fd30d266664c58c982f3f528'

  # sourceforge.net/sourceforge/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/sourceforge/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '5c6828aafe563fbb62c596e0b3d23c6c08e8b28baff3294c14634f1a3d938820'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
