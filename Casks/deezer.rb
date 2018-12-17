cask 'deezer' do
  version '0.18.2'
  sha256 '591444b4438cf9413839aa9a44eaa22b7303a900b5d94c859b1030addc560ae7'

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
