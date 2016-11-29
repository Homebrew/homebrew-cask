cask 'electronic-wechat' do
  version '1.4.0'
  sha256 '332720d23feba392fc4feb3bb70416d79c88b24f79f175fa79571bf8257e0317'

  url "https://github.com/geeeeeeeeek/electronic-wechat/releases/download/v#{version}/mac-osx.tar.gz"
  appcast 'https://github.com/geeeeeeeeek/electronic-wechat/releases.atom',
          checkpoint: 'aed794ae6ae043f36a95dc23636cf9a8259e1f7702b948f26c23362b35ccceda'
  name 'Electronic WeChat'
  homepage 'https://github.com/geeeeeeeeek/electronic-wechat'

  app 'Electronic WeChat-darwin-x64/Electronic WeChat.app'
end
