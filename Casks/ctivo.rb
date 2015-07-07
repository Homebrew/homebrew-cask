cask :v1 => 'ctivo' do
  version '2.3.1'
  sha256 '55ad469432634a77be432741ee6dfc5480c3baf652a6d2b3cde70f919c1d13d7'

  url "https://github.com/dscottbuch/cTiVo/releases/download/v#{version}.468/cTiVo_#{version}_468.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
