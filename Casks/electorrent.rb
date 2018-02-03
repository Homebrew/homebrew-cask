cask 'electorrent' do
  version '2.2.0'
  sha256 'ab3ededadb0e183f68113505cd9b7f5cbe41d57d9834443314bdbde8e31ea73a'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '9476e8803104ab062eb356ffe70ae4dcb1a2bff9c8857c419e406fd5b07446dd'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
