cask 'aircall' do
  version '1.4.5'
  sha256 '65a0cea18bc48a88bd33964a05f636a394de075f25c8d3c88e758fc5d23c41f5'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: 'e8c9a599631eac4bd8921d35e6ccd59f25a578c3a98a3a5ccc71755b212dcdda'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
