cask 'showyedge' do
  version '3.6.0'
  sha256 'a2f075ec176e33e36f6bc6507d46db647165a9d6e6dfa0766fb2af4e8c73d96d'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
