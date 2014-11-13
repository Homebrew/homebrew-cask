class Rubymine < Cask
  version '6.3.3'
  sha256 'c79216de02f2564ea60592420342ab9fb5014da7e7c96f92e2856dc49f2090dd'

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
                 ]
end
