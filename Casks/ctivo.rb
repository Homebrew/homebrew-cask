cask :v1 => 'ctivo' do
  version '2.4.1'
  sha256 'ba8c4e8d570af804f435d2f55276932e762742c05aafe946fdcc19d2a4403b3e'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
