cask :v1 => 'deezer' do
  version '1.0_4174'
  sha256 'c506f6215b097a2eec5605030d053f70bf7a747a5138a5c7f997b247eeccc151'

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
