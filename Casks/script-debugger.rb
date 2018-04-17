cask 'script-debugger' do
  version '7.0-7A40'
  sha256 '284f6d3a5506f5f996e371d9cbf1ac93f9611ec227e90b59fc4a67b5cc896d4c'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php",
          checkpoint: '598dfae5f421535329a211069183f4a6f0e919d476247232a9f7b99f502f6a65'
  name 'Script Debugger'
  homepage 'http://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               "~/Library/Application Support/Script Debugger #{version.major}",
               "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
               "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
             ]
end
