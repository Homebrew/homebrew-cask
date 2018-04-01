cask 'monu' do
  version '1.3.0'
  sha256 'b512089d4b072ff6e39967fb2e8ffad269ca3d0ec6ea190cac7bf3a4cd6158e1'

  url "https://github.com/maxogden/monu/releases/download/#{version}/Monu.zip"
  appcast 'https://github.com/maxogden/monu/releases.atom',
          checkpoint: '98c0f47dcb64d3643fa2b3e50888d9cd91c19b5c014f6343d7f1243240388cf8'
  name 'Monu'
  homepage 'https://github.com/maxogden/monu'

  app 'Monu.app'
end
