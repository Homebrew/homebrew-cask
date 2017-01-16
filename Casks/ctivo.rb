cask 'ctivo' do
  version '2.5.0'
  sha256 '34bb75805c558d150005364a2befb393fa84a014e710358dea23a08396b464d3'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: 'ef9494b415aa0b8468866906e2a36eca9621cdb61e41f03ca5f642d7a2ef15a1'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
