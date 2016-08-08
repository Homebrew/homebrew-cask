cask 'freesmug-chromium' do
  version '52.0.2743.82'
  sha256 'c97aa92cd843b288a887d4e2f87105dc4a5f3b4119dbd8cecaf3e4c0e7d9dc44'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '0e78bc6f66e84e9ca3d5173f2b4294029b5bdb80fb006b70116d696b49aa7dad'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
