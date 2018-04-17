cask 'hsang' do
  version '1.8.6'
  sha256 '74a01e493ed8df166b95e1451a69dcf5ba988830a1f176855b67accd544bf263'

  # opd.gdl.netease.com/ was verified as official when first introduced to the cask
  url "http://opd.gdl.netease.com/HSAng_#{version}.dmg"
  name 'HSAng'
  homepage 'http://lushi.163.com/'

  app 'HSAng.app'
end
