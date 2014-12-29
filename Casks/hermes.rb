cask :v1 => 'hermes' do
  version '1.2.4'
  sha256 '28bd29a7daf7665af9caa4a3a9bfaf46479fe6853bea7d345602f673ddd67ada'

  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml',
          :sha256 => '75880bde3306b76b80dd41dc9e99ca6adb1bcbf1a124dcaa82953e3023aa7c5d'
  homepage 'http://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
