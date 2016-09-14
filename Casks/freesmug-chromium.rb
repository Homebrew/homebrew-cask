cask 'freesmug-chromium' do
  version '53.0.2785.113'
  sha256 '22371c2d19099e1f1e5da865c2ea03bdbfae43034edc0eb59138738ad4445fa5'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '10fe0a2b7e68fe216aee3f8dc3d9e60fda31c6b279bae45dae7974ef7e362c30'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
