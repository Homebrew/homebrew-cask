cask 'freesmug-chromium' do
  version '66.0.3359.181'
  sha256 'a8db66db256dcd3ef26b032c76276926696ba6f1957b7f6a3feed714c046cd7c'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: 'f928fb527bc7df663429218b1f43769e3e20c8903d05ea4cad760f6782a18b05'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'

  app 'Chromium.app'
end
