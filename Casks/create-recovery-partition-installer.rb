cask 'create-recovery-partition-installer' do
  version '1.1'
  sha256 '19dfb873cfa574bc0692e58b0c96554e8f59c8406bb720889da490a548400882'

  url "https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases/download/v#{version}/Create.Recovery.Partition.Installer-#{version}.dmg"
  appcast 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases.atom',
          checkpoint: '3283f1ad38653f2f9f72a5f1b3db2ba3d800fd4ed585c9b93f7cc6fe98cce0f6'
  name 'Create Recovery Partition Installer'
  homepage 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/'

  app 'Create Recovery Partition Installer.app'
end
