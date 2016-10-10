cask 'rubymine' do
  version '2016.2.4'
  sha256 '5fde416a474b0d9ab7513bf3921a55773c6514c6dfcb2fa9bce99fe18e44a8d3'

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
