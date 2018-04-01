cask 'supersync' do
  version '6.1.2'
  sha256 'fe5afaefc3a9803106a2f4f4decde36a45401fa384404185fd06ab747f72a31a'

  url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  name 'SuperSync'
  homepage 'https://supersync.com/'

  app 'SuperSync.app'
end
