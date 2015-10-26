cask :v1 => 'mockplus' do
  version '2.0.9.7'
  sha256 'c7e2824f4941f2c42ed7bc0e8ebc6f3736d497c6f9eba2637f95f8cfae80f63d'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
