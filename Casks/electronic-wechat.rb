cask 'electronic-wechat' do
  version '2.0'
  sha256 'eba20a9164e917f1a9962fc3202d2c1255a3d26802ae2fd1fe229feaba5b6242'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: '376bc5e24b33e1f244068465de0491422e459039b7011e81fd0291a320914699'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
