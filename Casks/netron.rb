cask 'netron' do
  version '1.2.2'
  sha256 '72650b9bdec5ba5901e2db95a96ad8209cfa5b0c31f2b189b5c18a1aebf45744'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '740cc9c67a70e35b9603e54f34e3ed998d0589676eb3b3bcdf24328dc6f875f7'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
