cask 'ctivo' do
  version '3.1.2'
  sha256 'a428fadb9fcef043305023c771796ef210c3d12d22557894eb6b400647afa311'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  depends_on macos: '>= :mavericks'

  app 'cTiVo.app'
end
