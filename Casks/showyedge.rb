cask 'showyedge' do
  version '3.3.0'
  sha256 '65a6b4fad53bf9dd283406f1ea7b5309639c08b7ed436777524bbf16ed248305'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
