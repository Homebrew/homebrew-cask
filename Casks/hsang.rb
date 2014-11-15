cask :v1 => 'hsang' do
  version '1.2.3'
  sha256 '4ccbbfaeb0a0afe1570e6bc515b519b6b40a9b790678c81e44d38d6aa1421fa1'

  url "http://nie.gdl.netease.com/lushi/HSAng_#{version}.dmg"
  homepage 'http://lushi.163.com/'
  license :unknown

  app 'HSAng.app'
end
