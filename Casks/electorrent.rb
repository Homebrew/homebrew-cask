cask 'electorrent' do
  version '2.5.0'
  sha256 '1be6cdd596f7cda31526863c0fac8cc1cb46f1e66df0f1ef23c47ea119a7b0dc'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
