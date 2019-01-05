cask 'epic' do
  version '71.0.3578.98'
  sha256 'db8992104d646b1d8379dc94f51abe365f55d2bd5b132e6cc0d9810e3c3116ee'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://cdn.epicbrowser.com/epic_#{version}.dmg"
  appcast 'https://epicbrowser.com/thank_you.php'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
