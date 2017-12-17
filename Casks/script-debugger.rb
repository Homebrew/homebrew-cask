cask 'script-debugger' do
  version '6.0.7-6A217'
  sha256 'b4c234e77dcf6b04427888eabaffaceefcbf99030729f4c6cfb45038912aed6f'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast 'https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger6.php',
          checkpoint: '36f8c4638dd2281f170026d8c3fc5154b1ce7d8c9de33798097d5312a25ed56b'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               '~/Library/Application Support/Script Debugger 6',
               '~/Library/Caches/com.latenightsw.ScriptDebugger6',
               '~/Library/Preferences/com.latenightsw.ScriptDebugger6.plist',
             ]
end
