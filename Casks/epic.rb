cask 'epic' do
  version '79.0.3945.130'
  sha256 '793ee7f965879a5747f6696d98f03bc12b419b032dad1077a28a4d55e570c0ee'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://cdn.epicbrowser.com/epic_#{version}.dmg"
  appcast 'https://epicbrowser.com/thank_you.php'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'

  app 'Epic.app'
end
