cask :v1 => 'deezer' do
  version '1.1_4191'
  sha256 'f9d491fb8d4b055a60b3d4a13a4e8b19e4b9b8d70dc8740df734afeee5482a34'

  url "https://cdns-content.deezer.com/builds/mac/Deezer_#{version.sub(%r{^[^_]*_(\d+)},'\1')}.dmg"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => [
                  '~/Library/Application Support/Deezer',
                  '~/Library/Preferences/com.deezer.Deezer.plist',
                 ]
end
