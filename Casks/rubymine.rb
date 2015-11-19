cask :v1 => 'rubymine' do
  version '8.0.1'
  sha256 'bacbf1b7e998776cbccc9c04274d7a38d98f62c30b1b1b8f99ae328628da26ab'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}-custom-jdk-bundled.dmg"
  name 'RubyMine'
  homepage 'https://www.jetbrains.com/ruby/'
  license :commercial

  app 'RubyMine.app'

  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.delete('.')}",
                  "~/Library/Preferences/RubyMine#{version.delete('.')}",
                 ]
end
