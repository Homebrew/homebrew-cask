cask 'script-debugger' do
  version '7.0.2-7A51'
  sha256 '87d2333d34d61c9442f375324caf4ccacf9734a042b0f5e72bd4fff69350d608'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php",
          checkpoint: 'f3c5698d64f95c976c730f4431cbab945d2fa1cbdb50e7c4d1e7514b44437b1b'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               "~/Library/Application Support/Script Debugger #{version.major}",
               "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
               "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
             ]
end
