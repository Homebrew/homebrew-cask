cask 'rubymine' do
  version '2016.3'
  sha256 'f1d905ed0073418d74cc3de6f8d662c02c744dc6a9e5879f0bf5b6750d13f5c3'

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
