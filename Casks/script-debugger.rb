cask 'script-debugger' do
  version '7.0.11-7A110'
  sha256 'eaf7852be5b0595128f484ae9d97b81079feb62349ab7a8fed28cfa09b65ec38'

  # s3.amazonaws.com/latenightsw.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/latenightsw.com/ScriptDebugger#{version}.dmg"
  appcast "https://www.latenightsw.com/versions/com.latenightsw.ScriptDebugger#{version.major}.php"
  name 'Script Debugger'
  homepage 'https://latenightsw.com/'

  app 'Script Debugger.app'

  zap trash: [
               "~/Library/Application Support/Script Debugger #{version.major}",
               "~/Library/Caches/com.latenightsw.ScriptDebugger#{version.major}",
               "~/Library/Preferences/com.latenightsw.ScriptDebugger#{version.major}.plist",
             ]
end
