cask 'freesmug-chromium' do
  version '53.0.2785.101'
  sha256 'def3b2d904bdc35138b773813fc4c7553dfbe16569b7cab4dc201942339f9be0'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'd2b001f894373a0e64f16ac9a42288121858254a76e8ce94f5527b233adbeb06'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
