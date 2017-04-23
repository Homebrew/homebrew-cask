cask 'script-debugger' do
  version '6.0.4-6A198'
  sha256 '2fa7c1362023ead44cefc91526b4d2d73aa34839f3bf80d4047fafc9ce149aac'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast 'https://river.yodns.com/~alldritt/versions/com.latenightsw.ScriptDebugger6.php',
          checkpoint: '1b229674e207008bce3c67d461d178c2f6a7796ac0c57f518153a503518240f3'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap delete: [
                '~/Library/Application Support/Script Debugger 6',
                '~/Library/Caches/com.latenightsw.ScriptDebugger6',
                '~/Library/Preferences/com.latenightsw.ScriptDebugger6.plist',
              ]
end
