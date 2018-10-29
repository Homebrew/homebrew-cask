cask 'hsang' do
  version '1.8.9'
  sha256 '263507d2ec9842e256267b14ce9421d03f42051cc1bac05c8991e1ccd4ff3d67'

  # opd.gdl.netease.com was verified as official when first introduced to the cask
  url "https://opd.gdl.netease.com/HSAng_#{version}.dmg"
  name 'HSAng'
  homepage 'https://lushi.163.com/'

  app 'HSAng.app'
end
