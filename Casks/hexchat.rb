cask :v1 => 'hexchat' do
  version '2.10.2'
  sha256 'd4b20b528c741de69a41afab057ce935f1f8ef19e3ecda6dc7a56d7b829cf3a1'

  url "http://dl.hexchat.net/hexchat/osx/HexChat-#{version}.app.zip"
  homepage 'http://hexchat.github.io'
  license :oss

  app 'HexChat.app'
end
