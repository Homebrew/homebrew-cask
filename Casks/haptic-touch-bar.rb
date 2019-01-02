cask 'haptic-touch-bar' do
  version '2.4.0,1540815050'
  sha256 'c7b044f1516bb0912e863e2e3a3fd080fa06833eaddc0f056caf55a5e9df94b5'

  # dl.devmate.com/com.bopsoft.HapticTouchBar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.bopsoft.HapticTouchBar/#{version.before_comma.no_dots}/#{version.after_comma}/HapticTouchBar-#{version.before_comma.no_dots}.zip"
  appcast 'https://updates.devmate.com/com.bopsoft.HapticTouchBar.xml'
  name 'Haptic Touch Bar'
  homepage 'https://www.haptictouchbar.com/'

  depends_on macos: '>= :sierra'

  app 'Haptic Touch Bar.app'
end
