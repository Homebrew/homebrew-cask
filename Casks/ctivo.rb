cask 'ctivo' do
  version '2.4.4'
  sha256 '7a3bfdc09d275360d868a2cc198aeb114705ba549e6eadb761a561991afc83fe'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '089829b42a2b46c8f41bd7efa3f2cc72658d2fb48d1f8f002dcdaa8d47803f6c'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
