cask :v1 => 'showyedge' do
  version '2.2.0'
  sha256 'e51e4f9dbf20b8dffb601776a759b6fd49487e746e352d2733f0745e2126bce9'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          :sha256 => 'd7793b1e68aaf5225cf6fb712873277006b36e34873a1b6ff8c68e43f48209cd'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'
  license :public_domain

  app 'ShowyEdge.app'
end
