cask 'electronic-wechat' do
  version '1.4.0'
  sha256 '332720d23feba392fc4feb3bb70416d79c88b24f79f175fa79571bf8257e0317'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/v#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: 'e9899eac08894c445325bd0ac5195b280920157c95efcc8267aeb8316f08563f'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'
  license :mit

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
