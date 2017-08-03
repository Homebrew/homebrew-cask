cask 'freesmug-chromium' do
  version '60.0.3112.90'
  sha256 '98d79c85e39965787a23337c371b3d28a6f9f849ae927d96debc65f59603c1d4'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '92bc1938286733ad4670ea96aa11b8d15d849090908f82b48d6779a35af472af'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
