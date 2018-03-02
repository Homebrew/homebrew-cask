cask 'script-debugger' do
  version '6.0.8-6A225'
  sha256 '1f3ad8a2842c78ec4f504f4a596a9d237179ae93515457798ffa90a5f8183f07'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php",
          checkpoint: '97015bd999ef3fd6643464375af35feaefce12a96b099427cf4e29184fffd2aa'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               "~/Library/Application Support/Script Debugger #{version.major}",
               "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
               "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
             ]
end
