cask 'create-recovery-partition-installer' do
  version '1.1'
  sha256 '19dfb873cfa574bc0692e58b0c96554e8f59c8406bb720889da490a548400882'

  url "https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases/download/v#{version}/Create.Recovery.Partition.Installer-#{version}.dmg"
  appcast 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/releases.atom',
          checkpoint: '0a040c2c1f5e8caff03534c7b81e4061e41eb696edba4f50f773d503ddddd7d7'
  name 'Create Recovery Partition Installer'
  homepage 'https://github.com/MagerValp/Create-Recovery-Partition-Installer/'

  app 'Create Recovery Partition Installer.app'
end
