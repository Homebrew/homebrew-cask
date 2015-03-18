cask :v1 => 'deezer' do
  version '0.9.15_4155'
  sha256 '3587f6f922a97afd716d324223e6adce79d95156bae730e2f0e2148238987b16'

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
