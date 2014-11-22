cask :v1 => 'rubymine' do
  version '7.0'
  sha256 '60ceca89231a9756e682d754aaba409c9120266f20478e51f7b6004f82919478'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://www.jetbrains.com/ruby/'
  license :unknown

  app 'RubyMine.app'

  postflight do
    system '/usr/libexec/PlistBuddy', '-c', 'Set :JVMOptions:JVMVersion 1.6+', "#{staged_path}/RubyMine.app/Contents/Info.plist"
  end

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
                 ]
end
