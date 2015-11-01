cask :v1 => 'ctivo' do
  version '2.4.2'
  sha256 '0e05b8213251e1ccae91b946e9fce982a703acfda04bbe41ec1b4ed8c97c30d7'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
