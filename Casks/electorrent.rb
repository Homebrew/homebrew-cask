cask 'electorrent' do
  version '2.0.2'
  sha256 'ff8989af64c35bb31ab77801d9965c0419c8b886b4bcbca2e61e746915b74a68'

  url "https://github.com/Tympanix/Electorrent/releases/download/v#{version}/electorrent-#{version}.dmg"
  appcast 'https://github.com/Tympanix/Electorrent/releases.atom',
          checkpoint: '7fa7df84da154fe406e540d9ae79a0a4d1710a75065d452f49b4e692b1b3a26f'
  name 'Electorrent'
  homepage 'https://github.com/Tympanix/Electorrent'

  app 'Electorrent.app'
end
