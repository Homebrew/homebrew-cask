cask 'autodmg' do
  version '1.7'
  sha256 '32fba2f79198b13a06732f0c56c69d3c03c4bf712cc93d17d5bb984c97fd38c9'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  appcast 'https://github.com/MagerValp/AutoDMG/releases.atom',
          checkpoint: '9d1e4b58375e53ff36f5ec2b15aac2d0a74393f76456205e3bef4e390e282e72'
  name 'AutoDMG'
  homepage 'https://github.com/MagerValp/AutoDMG'

  app 'AutoDMG.app'
end
