cask 'electorrent' do
  version '2.1.0'
  sha256 '0a72c239b7af55b9795d338ce8ac0802c0172295fd6545d1eb3cc9eb2d3ce266'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '560f46eb463e3ffda063f93b900d67fee399b9a5065c65f5d805086f50a87234'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
