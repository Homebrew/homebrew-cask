cask 'electorrent' do
  version '2.6.0'
  sha256 '8a14aa558d0eec409835be48bcff35f249448f41630b9383222536acd2ce8eeb'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
