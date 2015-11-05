cask :v1 => 'rubymine' do
  version '8.0.0'
  sha256 '56ce3197e05f313ff1d8993938899f6da4305d499aedc07558956c82efb2d0ba'

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
