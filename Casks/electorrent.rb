cask 'electorrent' do
  version '2.2.1'
  sha256 '457a84edd541f2ac8b25e5312b589503354621d439c2bf75c6a615e1f06a04c0'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '0588cc358b25142872aaa3edbaabfa5e2b9425ab896cbe230246721c141450cc'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
