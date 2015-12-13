cask :v1 => 'rubymine' do
  version '8.0.2'
  sha256 '66494daacb0147bdf9e4f3148f2a7f0bdb4f4b65df108df562d03afa1acc23a3'

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
