cask 'harvest' do
  version '2.0.2'
  sha256 '51aaf90c4bae2b766ee2ab10158d3a0dd9a33e848075ac765d265be45250241e'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '7c7882523447866331187227ff9c410d2e34bf68d6d00bf454676db71b8d76f0'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'

  app 'Harvest.app'
end
