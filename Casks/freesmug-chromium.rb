cask 'freesmug-chromium' do
  version '60.0.3112.78'
  sha256 'd9cf52c43e2d541d7c24b73db6903d9c7183eedfe9b957f45e19565f09067f96'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'ca25958a6d249df9ccbee4056b8cba6cb8bdcca11caea041cf39c586a12dd36e'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
