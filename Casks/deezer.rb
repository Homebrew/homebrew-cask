cask :v1 => 'deezer' do
  version '0.9.15_4141'
  sha256 '0d1fd724eb5d22f4c35b22e5200e583ef277473ace366542ba62a77faccd0c41'

  url "https://cdns-content.deezer.com/builds/mac/Deezer#{version.sub(%r{^[^_]*(_\d+)},'\1')}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/beta/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => [
                  '~/Library/Application Support/Deezer',
                  '~/Library/Preferences/com.deezer.Deezer.plist',
                 ]
end
