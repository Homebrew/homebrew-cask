cask 'duet' do
  version '1.6.4.0'
  sha256 '0e52f9dc2392130aad7cf2731c2c1b08bd175dd4f93b3ae06474ca04df078416'

  # s3-us-west-1.amazonaws.com/duetmac/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.major_minor_patch.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://s3-us-west-1.amazonaws.com/duetmac/1_6_3/DuetDisplayAppcast.xml',
          checkpoint: '49aa9a81b1012d2524cc1a81e61502cea506299295703f1016da77dccb60cdfa'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
