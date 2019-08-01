cask 'hsang' do
  version '1.8.12'
  sha256 '76809b3737d3f03abcf06a2b3411e19f214be22d00b3f167ed164e4ac660e797'

  # opd.gdl.netease.com was verified as official when first introduced to the cask
  url "https://opd.gdl.netease.com/HSAng_#{version}.dmg"
  appcast 'https://hs.gameyw.netease.com/mac.xml'
  name 'HSAng'
  homepage 'https://lushi.163.com/'

  app 'HSAng.app'
end
