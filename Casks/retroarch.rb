cask 'retroarch' do
  version '1.3.6'
  sha256 '12a9464880343a430e6bdbc330ea9f2c34628210eedbed59be1602280a915a51'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '3518326c4c798a21f2c4e9e0c85cc6b602344bd9eab48af36eb6790d2ecdef94'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
