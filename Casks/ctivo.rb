cask 'ctivo' do
  version '3.1.2'
  sha256 '707ae733121c295bb404a1bb2c81e3f4ac4d5e2dbe8b9fd3e2d685872d1d3047'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: 'c364ab3ba067eadbe7d6eb7d1ba0c89488e9716c6684e94e5984c171e8907f82'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  depends_on macos: '>= :mavericks'

  app 'cTiVo.app'
end
