cask 'retroarch' do
  version '1.3.6'
  sha256 '12a9464880343a430e6bdbc330ea9f2c34628210eedbed59be1602280a915a51'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'http://buildbot.libretro.com/stable/',
          checkpoint: '1f193bd3be1c65306d7732695fd54a0077b43cb5d6997453c810848355d25b63'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
