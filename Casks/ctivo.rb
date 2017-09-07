cask 'ctivo' do
  version '2.5.1'
  sha256 '8ebef32944bcf98b7912d66b20cbc04f18386106203c1959c0e2089632d8d06d'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '8ee3a8d13c36610f7256fc859799193fee6a16ae417f04be1a5ec850d657bc2c'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
