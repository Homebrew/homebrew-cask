cask 'deezer' do
  version '4.1.1'
  sha256 '22c64deabd71a0a798270328e8d07091cdd8b0ce27a8e681bcf99574f5b37222'

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
