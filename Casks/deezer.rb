cask 'deezer' do
  version '0.11.1'
  sha256 '0783b50a8ae1af9024e1b76ec2d80b7b9ee60a2b50603211006b86113cdc5bb2'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
