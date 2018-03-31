cask 'milkytracker' do
  version '1.02.00'
  sha256 'b526497dc957454a4150e77b1f2f835ce564122e56f49bbe7b494dc984be076d'

  # github.com/milkytracker/MilkyTracker was verified as official when first introduced to the cask
  url "https://github.com/milkytracker/MilkyTracker/releases/download/v#{version}/milkytracker-#{version}.dmg"
  appcast 'https://github.com/milkytracker/MilkyTracker/releases.atom',
          checkpoint: 'e2b2d0a0d1f755e77a3ff467cb5e91b1bdc69a5851ed31d1dbde341684fd9568'
  name 'MilkyTracker'
  homepage 'http://milkytracker.titandemo.org/'

  app 'MilkyTracker.app'
end
