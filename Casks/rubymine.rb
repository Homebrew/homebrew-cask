cask 'rubymine' do
  version '2016.3.2'
  sha256 'fef9cb1448c07542f5ba95932f01675d6c008717d35f30f1a6940350d230b2f6'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=RM&latest=true&type=release',
          checkpoint: '9454fa286c99eaf2b355ab6fd7835e030e62e75e507ba99c6aca6e1e568661fc'
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
