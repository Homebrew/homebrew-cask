cask :v1 => 'deezer' do
  version '0.9.13_4123'
  sha256 '06088c364793ef6ccd549a23eebfe73af03720b10ecf714f952e2a4da1bd9a26'

  url "http://cdn-content.deezer.com/builds/mac/Deezer#{version.sub(%r{^([^_]*)(_\d+)},'\2')}.dmg"
  homepage 'https://www.deezer.com/beta/formac'
  license :gratis

  app 'Deezer.app'

  zap :delete => [
                  '~/Library/Application Support/Deezer',
                  '~/Library/Preferences/com.deezer.Deezer.plist',
                 ]
end
