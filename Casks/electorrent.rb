cask 'electorrent' do
  version '2.1.6'
  sha256 '2d2a2e95ae663583eef0e1e3950a31ebc6357a54dda43caccc798c63ee504b6a'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '33f8a0b15fb675f44ec859effecda703570f46beae21f9db2813d693592d23f5'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
