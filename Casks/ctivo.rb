cask 'ctivo' do
  version '3.3.1'
  sha256 'a1b9f4da0e3489b7ebb2a561ea124df8701d70db86daca4905cfdf431a4df407'

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.#{version}.zip"
  appcast 'https://github.com/mackworth/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/mackworth/cTiVo'

  app 'cTiVo.app'
end
