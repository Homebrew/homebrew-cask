cask 'rubymine' do
  version '2016.2.2'
  sha256 '40cae89326222471f1acc74ab54879e7e74558037054c620adb6804301a925a4'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

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
