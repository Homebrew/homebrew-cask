cask 'deezer' do
  version '0.16.6'
  sha256 'd2d727ad7d56416f4f6b703ff4bbed881e6cd7b2b6c9eba6ccf4c3e43a90c387'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  auto_updates true

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
