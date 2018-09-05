cask 'dmm-player-for-chrome' do
  version '1.5.0.9'
  sha256 '01773a09ae8d049bbd70a2d9753f16f5795b77621ad61b46f09e0e08b99207a0'

  url "http://portalapp.dmm.com/silverlightplayer/dmm/m/#{version.dots_to_underscores}/DMMPlayerForChromeInstaller_#{version.dots_to_underscores}.pkg"
  name 'DMM Player for Chrome'
  homepage 'http://www.dmm.com/digital/info_for_chrome_user_html/'

  pkg "DMMPlayerForChromeInstaller_#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'com.apple.ScriptEditor.id.DMMPlayerForChrome*'
end
