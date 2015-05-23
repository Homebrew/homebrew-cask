cask :v1 => 'flashlight' do
  version :latest
  sha256 :no_check

  # appspot.com is the official download host for the latest version, per the developer
  # Original discussion: https://github.com/nate-parrott/Flashlight/issues/104
  url 'https://flashlightplugins.appspot.com/latest_download'
  name 'Flashlight'
  appcast 'https://raw.githubusercontent.com/nate-parrott/flashlight/master/Appcast.xml',
          :sha256 => '612946c9e6a7fd1de81bfd1cd822d4a047f986caa9451ba9bed3d3bbf57b4782'
  homepage 'http://flashlight.nateparrott.com/'
  license :gpl

  uninstall :quit => 'com.nateparrott.Flashlight.FlashlightSIMBLAgent'

  zap :delete => [
    '~/Library/Caches/com.nateparrott.Flashlight',
    '~/Library/FlashlightPlugins',
    '~/Library/Preferences/com.nateparrott.Flashlight.plist',
    '~/Library/Preferences/com.nateparrott.Flashlight.FlashlightSIMBLAgent.plist',
    '~/Library/Saved Application State/com.nateparrott.Flashlight.savedState',
    '~/Library/ScriptingAdditions/Flashlight.osax'
  ]

  app 'Flashlight.app'
end
