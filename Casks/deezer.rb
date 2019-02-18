cask 'deezer' do
  version '4.2.4'
  sha256 '27f03eb67708c6cf4cbe4d73aefe8dcfc4f15ed3b91cdb63bab04ec9d7054e55'

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
