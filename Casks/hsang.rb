cask 'hsang' do
  version '1.8.7'
  sha256 '34a77d461738327873a13410270e08b51435ddcd25a9ba842fd96d68094b93c4'

  # opd.gdl.netease.com/ was verified as official when first introduced to the cask
  url "http://opd.gdl.netease.com/HSAng_#{version}.dmg"
  name 'HSAng'
  homepage 'http://lushi.163.com/'

  app 'HSAng.app'
end
