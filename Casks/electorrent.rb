cask 'electorrent' do
  version '2.1.4'
  sha256 'a33c7ee0652dec678659e4712745024c8016a827c6d22e53745335165074be2b'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: 'f365bad3325db723c51c5b3ff1d3879d6ca0a83acb866e75a95630ee320e0783'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
