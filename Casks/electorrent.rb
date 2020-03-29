cask 'electorrent' do
  version '2.7.0'
  sha256 '2498ec8f0679ff6827988037616c5c21a7f5876bf2c12d2ca991e36d464c9d2e'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
