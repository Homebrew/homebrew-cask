cask 'epic' do
  version '71.0.3579.98'
  sha256 '080dcd3f1831dcb999b1a6a32acbba04b7f06eee79940c42d5fea9e8c04f1b78'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://cdn.epicbrowser.com/epic_v#{version}.dmg"
  appcast 'https://epicbrowser.com/thank_you.php'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
