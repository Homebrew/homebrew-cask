cask 'freesmug-chromium' do
  version '53.0.2785.116'
  sha256 '5213c4fc50aeea44c6f97818f87019b4d7e4420cc6313ea2c8ed4266befef3b2'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '04d8f777b18e1f54958dcd8badcd51eb778c64dcd55521d45a85179bbe23cd97'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
