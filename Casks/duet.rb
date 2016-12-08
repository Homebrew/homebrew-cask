cask 'duet' do
  version '1.6.3.1'
  sha256 '35211d99080003fd378504a24ed7be3795381ffc781b872c2164fc0fd780e63c'

  # s3-us-west-1.amazonaws.com/duetmac/ was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/duetmac/#{version.major_minor_patch.dots_to_underscores}/duet-#{version.dots_to_hyphens}.zip"
  appcast 'https://updates.duetdisplay.com/checkMacUpdates',
          checkpoint: '49aa9a81b1012d2524cc1a81e61502cea506299295703f1016da77dccb60cdfa'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
