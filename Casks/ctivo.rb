cask 'ctivo' do
  version '3.3.0'
  sha256 '67a75ea8449d593c6cb240a0acbc20e3bdef743651eda419eb38558a6a74f2ab'

  url "https://github.com/mackworth/cTiVo/releases/download/#{version}/cTiVo.app.zip"
  appcast 'https://github.com/mackworth/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/mackworth/cTiVo'

  app 'cTiVo.app'
end
