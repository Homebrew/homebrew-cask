cask 'create-recovery-partition-installer' do
  version '1.1'
  sha256 '19dfb873cfa574bc0692e58b0c96554e8f59c8406bb720889da490a548400882'

  url "https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases/download/v#{version}/Create.Recovery.Partition.Installer-#{version}.dmg"
  appcast 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases.atom',
          checkpoint: '08c16597d72d24da4a1155e5b68fe7e9bc52e94570cdea8238189dfa265f0160'
  name 'Create Recovery Partition Installer'
  homepage 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/'

  app 'Create Recovery Partition Installer.app'
end
