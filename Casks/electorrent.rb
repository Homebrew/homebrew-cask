cask 'electorrent' do
  version '2.6.1'
  sha256 '097b7d7b851719f696ff0f1698151883fb5338b7204625fbc0889f4b9c696e80'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
