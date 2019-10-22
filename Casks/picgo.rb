cask 'picgo' do
  version '2.1.2'
  sha256 '518483a0bf303f09442aa749b4236af89223a47a82a8c0fcd9ff09603f2ac72f'

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  appcast 'https://github.com/Molunerfinn/PicGo/releases.atom'
  name 'PicGo'
  homepage 'https://github.com/Molunerfinn/PicGo'

  app 'PicGo.app'
end
