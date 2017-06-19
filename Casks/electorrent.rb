cask 'electorrent' do
  version '2.1.2'
  sha256 'd512358894f0a37a98f22e1c37513a661af48d8232a09fd6bd9d7d123936cc9e'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '016da9cb8be6d066c271ba0f9cce6883a4c86d124b1ee92c549b533711f6917c'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
