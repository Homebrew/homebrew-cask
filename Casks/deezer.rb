cask :v1 => 'deezer-beta' do
  version '0.9.9_4104'
  sha256 '2b9e8acb66a01a7b6e77da75a007b68648e07c66fd413bf57c2c29e029ee43ba'

  url "http://cdn-content.deezer.com/builds/mac/Deezer#{version.sub(%r{^[^_]*(_\d+)},'\1')}.dmg"
  homepage 'https://www.deezer.com/beta/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => '~/Library/Preferences/com.deezer.Deezer.plist'
end
