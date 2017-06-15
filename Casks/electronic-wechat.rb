cask 'electronic-wechat' do
  version '2.0'
  sha256 'eba20a9164e917f1a9962fc3202d2c1255a3d26802ae2fd1fe229feaba5b6242'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/V#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: 'c1ecc5779be1473be10667310df8d1a00790382af0ec0746cde056b737b5072f'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
