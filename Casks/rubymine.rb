cask 'rubymine' do
  version '2016.1'
  sha256 'c587ec3e282802c93be5826be79fddb003a6842b861f5c9a885c6c0c9638106d'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap delete: [
                "~/Library/Application Support/RubyMine#{version.major_minor.no_dots}",
                "~/Library/Preferences/RubyMine#{version.major_minor.no_dots}",
                "~/.RubyMine#{version.major_minor.no_dots}",
                '~/Library/Preferences/com.jetbrains.RubyMine.plist',
                "~/Library/Caches/RubyMine#{version.major_minor.no_dots}",
                "~/Library/Logs/RubyMine#{version.major_minor.no_dots}",
              ]
end
