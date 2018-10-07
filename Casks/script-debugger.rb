cask 'script-debugger' do
  version '7.0.4-7A58'
  sha256 'e7ee01fcb46d3f57f1c732f0b4ae64f56a4b3d6feb1bdbacb02ead188d961f57'

  # s3.amazonaws.com/latenightsw.com was verified as official when first introduced to the cask
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
