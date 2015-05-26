cask :v1 => 'deezer' do
  version '0.9.17_4164'
  sha256 '1c636c2b8137919638a7ed0e7c866143686e2502c5af6d8381ec787042b70fae'

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
