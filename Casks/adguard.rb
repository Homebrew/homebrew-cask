cask 'adguard' do
  version '1.4.0'
  sha256 'e8b0d47830b99d93412f09adee3d2396edb94b853e7a9ba25b1e8084a62a8ae7'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '870fe28eba690c9b515da276db3aa6c0cd455ed91699ec3899a322de829cf1cf'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'

  app 'Adguard.app'
end
