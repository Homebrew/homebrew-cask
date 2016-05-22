cask 'rubymine' do
  version '2016.1.1'
  sha256 '9fa6bb7a95acd5821bab2c43f9e83a95e68508be250f1fae05288414716094c5'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap delete: [
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/.RubyMine#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.RubyMine.plist',
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
