cask 'hsang' do
  version '1.8.2'
  sha256 'a1e54fc34b5ca82ed1b3e24f4618b832ef2df8e9d1bdb918573ac6f3d339e449'

  # nie.gdl.netease.com/lushi was verified as official when first introduced to the cask
  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  name 'HSAng'
  homepage 'http://lushi.163.com/'

  app 'HSAng.app'
end
