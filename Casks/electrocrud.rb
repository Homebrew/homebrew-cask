cask 'electrocrud' do
  version '2.6.1'
  sha256 '445373333da3810a10a8bfceafcb7a4033e00fadfd203de7df11a31b88f5f404'

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast 'https://github.com/garrylachman/ElectroCRUD/releases.atom'
  name 'ElectroCRUD'
  homepage 'https://github.com/garrylachman/ElectroCRUD'

  app 'ElectroCRUD.app'
end
