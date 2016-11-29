cask 'showyedge' do
  version '3.1.0'
  sha256 'abe481108cfa2803ffbbea1d19418377c529086ed8955b8dc09d56723fa387e6'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          checkpoint: 'a70a969aafa5c0a857871907ede6af76016e98aaaa87a827a38fa3550d5073d6'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
