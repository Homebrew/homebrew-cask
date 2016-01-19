cask 'flashlight' do
  version '1.0.1'
  sha256 'b1d6172d1fb7901fdb50c7d4b2fc185ea324df8ae86158669c635babbfb85aec'

  url "https://github.com/nate-parrott/Flashlight/releases/download/v#{version}/Flashlight.zip"
  appcast 'https://github.com/nate-parrott/Flashlight/releases.atom',
          checkpoint: '8c5e2c28b99d28496b74bd58b778ef895bb143f19bc6eaee21d8e0eeb55c0309'
  name 'Flashlight'
  homepage 'https://flashlight.nateparrott.com/'
  license :gpl

  auto_updates true

  app 'Flashlight.app'

  postflight do
    suppress_move_to_applications
  end

  uninstall quit: 'com.nateparrott.Flashlight.FlashlightSIMBLAgent'

  zap delete: [
                '~/Library/Caches/com.nateparrott.Flashlight',
                '~/Library/FlashlightPlugins',
                '~/Library/Preferences/com.nateparrott.Flashlight.plist',
                '~/Library/Preferences/com.nateparrott.Flashlight.FlashlightSIMBLAgent.plist',
                '~/Library/Saved Application State/com.nateparrott.Flashlight.savedState',
                '~/Library/ScriptingAdditions/Flashlight.osax',
              ]
end
