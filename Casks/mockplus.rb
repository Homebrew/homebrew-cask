cask 'mockplus' do
  version '2.1.3.2'
  sha256 '467106186b0b58e8d282a15b76e667218cd19eccdab606e030b81805c87d6412'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
