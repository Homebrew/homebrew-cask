cask 'rubymine' do
  version '2017.1'
  sha256 'a92fd0aac6e397fdef2091de8110fa7a5e8017cc12d60ae7997b3ef58ba0d9c2'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release',
          checkpoint: 'd2879e3cc202e9ba74b58d638f5ff14ab0d2fa4913c40f8e8a42b2d45cd7b576'
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'

  auto_updates true
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
