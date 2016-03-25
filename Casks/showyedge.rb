cask 'showyedge' do
  version '3.0.0'
  sha256 '4a6b16970cb77a9b3e77031e74cf8907a09106ffff1e430eec9c41790579008c'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          checkpoint: '7a3bf959137962755dedbbd897ece4f09dc078ba6d4115cc4c3c7bf65e98abd3'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'
  license :public_domain

  app 'ShowyEdge.app'
end
