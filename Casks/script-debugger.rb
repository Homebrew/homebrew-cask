cask 'script-debugger' do
  version '6.0.5-6A205'
  sha256 '30955f15be8c2502d49e9002065e0aa44260fb4b38616f0d498cbf00848cbb6a'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast 'https://river.yodns.com/~alldritt/versions/com.latenightsw.ScriptDebugger6.php',
          checkpoint: 'ac33f1a22a8106f2a990271bb45dd8f0931fd8046039a87b9903f5e12eb9d932'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               '~/Library/Application Support/Script Debugger 6',
               '~/Library/Caches/com.latenightsw.ScriptDebugger6',
               '~/Library/Preferences/com.latenightsw.ScriptDebugger6.plist',
             ]
end
