cask 'itools' do
  version '2.9.1'
  sha256 '56e888c6c65784604ee3a48bbc0013bdf0c1f73e70e72e230699f45243f5f977'

  # dl2.itools.hk/dl was verified as official when first introduced to the cask
  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'

  depends_on macos: '>= :mountain_lion'

  app 'iTools.app'
end
