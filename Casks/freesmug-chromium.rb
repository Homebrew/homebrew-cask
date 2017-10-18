cask 'freesmug-chromium' do
  version '62.0.3202.62'
  sha256 'a611f13e786a49417f10ce3c294d12d6383281a57e3af590145b45daca2bbc6f'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'c3d181c69cfd9530b0931d169a9d61a9a8ddf077bb22de7d3f5c67db3c61c162'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
