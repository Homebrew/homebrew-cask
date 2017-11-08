cask 'ctivo' do
  version '3.0Release'
  sha256 '8fc7b51ba71530455c6aa54363706dad655d0d612e3fbad755ebb9bc08600b01'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: 'ee2f89f1a94d4c2740bd974385a1679a2d8aab5f9678120ae3e5b7cc7020c95c'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
