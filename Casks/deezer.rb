cask 'deezer' do
  version '0.8.0'
  sha256 '6ff9dbae14de1dbbca6f3a51f8b618bf87c6d45f4a8692113b5f3e5354f7cc60'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
