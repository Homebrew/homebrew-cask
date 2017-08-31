cask 'nteract' do
  version '0.2.0'
  sha256 '5e335e818835ceb01878dd857e1c393f66c25da2e7d68c213ad6b699f736727b'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'd51d2bd6154a791ab4d5d8ff0d438b9c01146ef22cbf48a1f51e61daa5e5a60c'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
