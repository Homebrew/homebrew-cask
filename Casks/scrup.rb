cask :v1 => 'scrup' do
  version '1.3.3'
  sha256 '5004222db9a6ddd4e6cb525d00e95f8a38e9fb623bc1397e5258b2ef2c4bd3b0'

  url "http://data.hunch.se/scrup/Scrup-#{version}-bd23160.zip"
  appcast 'https://s.rsms.me/scrup/appcast.xml',
          :sha256 => '140f4487d00bb157286f261bfddb8f7a8c29a4fc2e53a63119bdbe1c828a6d00'
  homepage 'https://github.com/rsms/scrup'
  license :oss

  app 'Scrup.app'
end
