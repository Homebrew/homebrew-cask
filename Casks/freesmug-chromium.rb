cask 'freesmug-chromium' do
  version '53.0.2785.143'
  sha256 '654e36265467cd9c412c89118ebdfbd3f942b6409d8cec8a03ab0c2e20b67cd0'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '576ba2caa829117144546742832fe469060360277be0a392f8cac6656ae144ee'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
