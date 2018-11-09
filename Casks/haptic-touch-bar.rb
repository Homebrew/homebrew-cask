cask 'haptic-touch-bar' do
  version :latest
  sha256 :no_check

  url 'https://www.haptictouchbar.com/download/HapticTouchBar.zip'
  appcast 'https://updates.devmate.com/com.bopsoft.HapticTouchBar.xml'
  name 'Haptic Touch Bar'
  homepage 'https://www.haptictouchbar.com/'

  app 'Haptic Touch Bar.app'
end
