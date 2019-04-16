cask 'picgo' do
  version '2.1.1'
  sha256 '0aaec3b31a89e3832d9b939a10e7c0e1817dbcafca3a44dfea35f16f5ac96deb'

  url "https://github.com/Molunerfinn/PicGo/releases/download/v#{version}/PicGo-#{version}-mac.zip"
  appcast 'https://github.com/Molunerfinn/PicGo/releases.atom'
  name 'PicGo'
  homepage 'https://github.com/Molunerfinn/PicGo'

  app 'PicGo.app'
end
