cask 'hsang' do
  version '1.6.1'
  sha256 'e747d0549630c24a81b3b74b9382cd47ecb594af123f7471a4f9753c3bf4b1ba'

  # netease.com is the official download host per the vendor homepage
  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  name 'HSAng'
  homepage 'http://lushi.163.com/'
  license :gratis

  app 'HSAng.app'
end
