cask 'deezer' do
  version '0.7.3'
  sha256 '0b5dc9495aa4a2cad70ce6c9019ac9c99f11f2b59d176197d53780048fd28a3a'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/formac'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
