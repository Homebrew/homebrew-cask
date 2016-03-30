cask 'konachan' do
  version '1.0'
  sha256 '248ff1db7bf9ca3d8148253c7b7053c89982419dd1481e103780b8dfb9aa1e11'

  url "https://github.com/yaqinking/Konachan/releases/download/v#{version}/Konachan.app.zip"
  name 'Konachan'
  homepage 'https://github.com/yaqinking/Konachan'
  license :mit

  app 'Konachan.app'
end
