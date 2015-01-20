cask :v1 => 'deezer' do
  version '0.9.14_4136'
  sha256 'e4986a5ea10854c48ac5b15b4fd5964fe2611096f4311f428fe6e82fcddad717'

  url "http://cdn-content.deezer.com/builds/mac/Deezer#{version.sub(%r{^[^_]*(_\d+)},'\1')}.dmg"
  homepage 'https://www.deezer.com/beta/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => [
                  '~/Library/Application Support/Deezer',
                  '~/Library/Preferences/com.deezer.Deezer.plist',
                 ]
end
