cask 'ctivo' do
  version '2.5.1'
  sha256 '8ebef32944bcf98b7912d66b20cbc04f18386106203c1959c0e2089632d8d06d'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '86ba8bd71ce51346185a0c877452b4a508e568258a7f86641fb405bb278d4254'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
