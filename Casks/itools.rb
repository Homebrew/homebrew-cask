cask 'itools' do
  version '2.9.2'
  sha256 'cd74e55b8b92a8c1a75278ad7c02baf5521b51241505620c282e9547cd20afcd'

  # dl2.itools.hk/dl was verified as official when first introduced to the cask
  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'

  depends_on macos: '>= :mountain_lion'

  app 'iTools.app'
end
