cask 'ctivo' do
  version '3.3.1'
  sha256 'c7318a48d1fa3aaf10999051c37b018e9cf3c9ae413182a7d235e66f9ef08ab1'

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.#{version}.final.zip"
  appcast 'https://github.com/mackworth/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/mackworth/cTiVo'

  app 'cTiVo.app'
end
