cask 'electorrent' do
  version '2.1.1'
  sha256 'cbca6493f3b817429e990a273ff86e25801cf68dfcfeb7904c8aa0e780e0a8fa'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: 'f3be26d66a45c1957385f08d1574e7c4271a2044138ffbfc2d673a169e9451f8'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
