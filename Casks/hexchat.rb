cask 'hexchat' do
  version '2.10.2'
  sha256 'd4b20b528c741de69a41afab057ce935f1f8ef19e3ecda6dc7a56d7b829cf3a1'

  url "https://dl.hexchat.net/hexchat/osx/HexChat-#{version}.app.zip"
  appcast 'https://github.com/hexchat/hexchat/releases.atom',
          checkpoint: 'bf6e520b7f29913768f3f624bf9c8be7c7dafa7f9ed25994309732862c84e46d'
  name 'HexChat'
  homepage 'https://hexchat.net'

  app 'HexChat.app'
end
