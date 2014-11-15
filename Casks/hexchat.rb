cask :v1 => 'hexchat' do
  version '2.10.0'
  sha256 'b23f36027d81c6b1152e9ad32793e5466df33dafb5bce508d1391c6de82c156d'

  url "http://dl.hexchat.net/hexchat/osx/HexChat-#{version}.app.zip"
  homepage 'http://hexchat.github.io'
  license :oss

  app 'HexChat.app'
end
