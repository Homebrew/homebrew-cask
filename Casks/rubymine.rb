cask 'rubymine' do
  version '8.0.3'
  sha256 'b1e6a328ac9f97224df6d71fb8cf20fc92df6fb1579f008be8611dc97c51a2a3'

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
