cask 'appdelete' do
  version :latest
  sha256 :no_check

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          :sha256 => '958b61c33ea46297761dea20f69e3ac0190b40ce9cf96d8b7f7ae378d0d3ad39'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end
