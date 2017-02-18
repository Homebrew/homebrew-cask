cask 'ctivo' do
  version '2.5.1'
  sha256 '8ebef32944bcf98b7912d66b20cbc04f18386106203c1959c0e2089632d8d06d'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: 'e0c8386ad0bfde5c29b0a953fcc1cdd16cc8e6787a44337006d9a535a0f8903b'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
