cask 'electronic-wechat' do
  version '1.2.0'
  sha256 '9c31710fc280604a441a12258475edad8d82893b19e5525ca6187b9b08dbfff6'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/v#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: 'e9899eac08894c445325bd0ac5195b280920157c95efcc8267aeb8316f08563f'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'
  license :mit

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
