cask 'cloak' do
  version '2.1.2'
  sha256 '31386b801cd7677bb33446ab93259ca8ed4c330d2dd88918354360d34588cd09'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'b3d53389e79d941e79f60fe8f76f6ab95b89e3e76694f5f23662fd897c6f257a'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
