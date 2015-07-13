cask :v1 => 'ctivo' do
  version '2.4.0'
  sha256 'a6a310d301de327c6681121c62e439a9d4fc239568273cca3392b8fed1ccbb42'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
