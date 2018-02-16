cask 'freesmug-chromium' do
  version '64.0.3282.167'
  sha256 'bce59dd979cf6368ba00459f6a7da0c898f062e52313b282bf4c2a8da9511c1c'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'fcd1b20b94df1225ed374640f31432dda71f3f646583d80acc239d11cff4403c'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
