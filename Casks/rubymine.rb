cask 'rubymine' do
  version '2016.2.5'
  sha256 '21467ec8a6f4369b55da63aa8b3b79c398264bdbeaad4de3a9bf55d5f472124c'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  conflicts_with cask: 'rubymine-eap'

  app 'RubyMine.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]
end
