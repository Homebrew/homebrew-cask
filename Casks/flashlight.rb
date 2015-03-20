cask :v1 => 'flashlight' do
  version :latest
  sha256 :no_check

  # appspot.com is the official download host for the latest version, per the developer
  # Original discussion: https://github.com/nate-parrott/Flashlight/issues/104
  url 'https://flashlightplugins.appspot.com/latest_download'
  name 'Flashlight'
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
