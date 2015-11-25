cask :v1 => 'mockplus' do
  version '2.0.9.9'
  sha256 '288eb26d15f972d0caae0903d3d7025c577ded1e8e5957e9feffd72ce3989d44'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
