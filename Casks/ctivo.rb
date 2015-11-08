cask :v1 => 'ctivo' do
  version '2.4.4'
  sha256 '7a3bfdc09d275360d868a2cc198aeb114705ba549e6eadb761a561991afc83fe'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
