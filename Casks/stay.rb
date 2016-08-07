cask 'stay' do
  version '1.2.5'
  sha256 '4ca4048d75c2b3199e1a46c06797a1a483ebf7f9ca9fa48ddac9eb1bfe75bc58'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          checkpoint: '9d125f0552b4d49387b21e68a283e4dc073ba8b539cf077a0c1b9f42c200692b'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'
  license :commercial

  app 'Stay.app'
end
