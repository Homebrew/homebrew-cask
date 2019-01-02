cask 'deezer' do
  version '4.0.5'
  sha256 'f8529eccf5fe81f3f3b3886e56a7f67459c5692f3cb633326df7d61339cdd13d'

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
