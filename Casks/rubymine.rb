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
                  '~/Library/Application Support/RubyMine40',
                  '~/Library/Preferences/RubyMine40',
                  '~/Library/Application Support/RubyMine50',
                  '~/Library/Preferences/RubyMine50',
                  '~/Library/Application Support/RubyMine60',
                  '~/Library/Preferences/RubyMine60',
                  '~/Library/Application Support/RubyMine70',
                  '~/Library/Preferences/RubyMine70'
                 ]
end
