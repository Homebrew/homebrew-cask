cask 'picgo' do
  version '2.2.1'
  sha256 '3f526dc0ed5537f4d896a82f08053b24821a85329e2baf672fef51cd39f89ea9'

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  appcast 'https://github.com/Molunerfinn/PicGo/releases.atom'
  name 'PicGo'
  homepage 'https://github.com/Molunerfinn/PicGo'

  app 'PicGo.app'
end
