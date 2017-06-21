cask 'electorrent' do
  version '2.1.3'
  sha256 'd6703208c45ecb8d8342d2c620d19ab980f5fedc33f7a8cd2d7b159168dd6959'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '309d619751e7196268fc6c4a8d6fa2f0cfa9248e1c6b84e4dfe84fcc2a8830fa'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
