cask 'goldencheetah' do
  version '3.3.0'
  sha256 'a32d917ead989fe491b1083f45efe758dcddaa912a7630904090c8c562f241e3'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.major_minor}/GoldenCheetah_#{version}_QT5_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: '5710204f6643feba3208c9965e9c6526cd83c713ed544f865d907cb0a8d82677'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'

  app 'GoldenCheetah.app'
end
