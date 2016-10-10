cask 'retroarch' do
  version '1.3.6'
  sha256 '12a9464880343a430e6bdbc330ea9f2c34628210eedbed59be1602280a915a51'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  name 'RetroArch'
  homepage 'http://libretro.com'

  app 'RetroArch.app'
end
