cask 'bilibili' do
  version '2.25'
  sha256 '2674d3ef3b1b859c87e13882e1b3296130c3a71a7abf6eebfd52a26175acd829'

  url "https://github.com/typcn/bilibili-mac-client/releases/download/#{version}/Bilibili.dmg.zip"
  appcast 'https://github.com/typcn/bilibili-mac-client/releases.atom',
          :sha256 => '74f97168f824f6b63b6c9e5fe23ffb66613ecefb444f6a8a6dd3107caaa8c5be'
  name 'Bilibili'
  homepage 'https://github.com/typcn/bilibili-mac-client/'
  license :gpl

  container :nested => 'Bilibili.dmg'

  app 'Bilibili.app'
end
