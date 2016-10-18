cask 'konachan' do
  version '1.0'
  sha256 '248ff1db7bf9ca3d8148253c7b7053c89982419dd1481e103780b8dfb9aa1e11'

  url "https://github.com/yaqinking/Konachan/releases/download/v#{version}/Konachan.app.zip"
  appcast 'https://github.com/yaqinking/Konachan/releases.atom',
          checkpoint: '687d4c8001201a585bf1c871deca020c61cd9dd805fb9341c2bf47a37fe3a2ac'
  name 'Konachan'
  homepage 'https://github.com/yaqinking/Konachan'

  app 'Konachan.app'
end
