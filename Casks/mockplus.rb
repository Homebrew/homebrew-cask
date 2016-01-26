cask 'mockplus' do
  version '2.1.3'
  sha256 '93c7576be708c45cf36d6a9996de9844074b9c420ad9320858ba11f23a9010a2'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
