cask 'autodmg' do
  version '1.7.1'
  sha256 'db95583369c36e030c5ee052bfd6163e501aec2b7755bf264c62a24eaaecc476'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: '7e549f791338e7a610b9e95a9258f0bc26aad00ffdd8b1d2c49ef141f587547e'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'
end
