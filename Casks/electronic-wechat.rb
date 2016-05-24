cask 'electronic-wechat' do
  version '1.3.0'
  sha256 '103fbc03c3d12727938ddfc55fec842ada6cc959be94a55838b9bddf66abeb91'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/v#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: 'e9899eac08894c445325bd0ac5195b280920157c95efcc8267aeb8316f08563f'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'
  license :mit

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
