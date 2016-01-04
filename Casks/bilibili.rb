cask 'bilibili' do
  version '2.25'
  sha256 '2674d3ef3b1b859c87e13882e1b3296130c3a71a7abf6eebfd52a26175acd829'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'http://app.eqoe.cn/updates/bilimac.xml',
          :sha256 => 'ebec5827ba7370d2ce53faea79e7eac3c84a5772bdc0067daa6315d9298dacb2'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'

  app 'Bilibili.app'
end
