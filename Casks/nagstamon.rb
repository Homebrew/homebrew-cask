cask 'nagstamon' do
  version '3.0.2'
  sha256 '824e4ceaf23d831a56df5ef95fef10d645c5db9bff4db380542a326b421a5b8a'

  url "https://nagstamon.ifw-dresden.de/files/stable/Nagstamon%20#{version}.dmg"
  appcast 'https://nagstamon.ifw-dresden.de/files/stable/sha256sums.txt',
          checkpoint: '931e37957a4e3bc32f0399df254a4de551f18685165c94bd4947098c9e07d812'
  name 'Nagstamon'
  homepage 'https://nagstamon.ifw-dresden.de/'

  app 'Nagstamon.app'

  zap trash: '~/.nagstamon'
end
