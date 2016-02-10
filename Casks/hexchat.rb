cask 'hexchat' do
  version '2.10.2'
  sha256 'd4b20b528c741de69a41afab057ce935f1f8ef19e3ecda6dc7a56d7b829cf3a1'

  url "https://dl.hexchat.net/hexchat/osx/HexChat-#{version}.app.zip"
  name 'HexChat'
  homepage 'https://hexchat.net'
  license :gpl

  app 'HexChat.app'
end
