cask 'mockplus' do
  version '2.1.4.1'
  sha256 '67302e2f010217c3bd434f74bdc8680d6ca602d7d5da0035367f330b463fa3ba'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
