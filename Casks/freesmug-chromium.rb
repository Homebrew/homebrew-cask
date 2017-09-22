cask 'freesmug-chromium' do
  version '61.0.3163.91'
  sha256 '7777aea7f7e87d63fbb8ae36c5e28e22833a73cb4d8626084228134c468ac8f4'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '6cd429e20437b9b5bcab6d887d0ad9cd0138549c432d7f3dcb04b348972cc7de'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
