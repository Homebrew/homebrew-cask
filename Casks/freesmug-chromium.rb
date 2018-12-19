cask 'freesmug-chromium' do
  version '71.0.3578.98'
  sha256 'ff96e994b0df065dd02d29849cc72ff15177689cfd38ac760b8a2f1a9960c91a'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
