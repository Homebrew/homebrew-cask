cask 'netron' do
  version '2.9.7'
  sha256 'f41081e9cf45a8c27145707974c89ec08f070b00a4ae06c625eec8312c6c41a6'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
