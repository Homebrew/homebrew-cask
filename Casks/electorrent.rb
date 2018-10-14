cask 'electorrent' do
  version '2.4.0'
  sha256 '95ebe44128aea36c7ecc15986bf50b4181087d0afb5b66ba3dba68b64b49bb3e'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
