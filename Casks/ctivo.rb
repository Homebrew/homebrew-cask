cask 'ctivo' do
  version '2.4.4'
  sha256 '7a3bfdc09d275360d868a2cc198aeb114705ba549e6eadb761a561991afc83fe'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '8407d89c51f12725b959b13dc17f5823ee2cf96d1a7d646de8ee035c11f07f8c'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
