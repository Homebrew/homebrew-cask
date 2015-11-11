cask :v1 => 'rubymine' do
  version '8.0.0'
  sha256 '6e20d0fbbd3edf71c44f0c46e6ad8b400a51d5e1604d68fb8ec8ccee8f6e851d'

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
