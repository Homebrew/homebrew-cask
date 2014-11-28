cask :v1 => 'ctivo' do
  version '2.3.1'
  sha256 '55ad469432634a77be432741ee6dfc5480c3baf652a6d2b3cde70f919c1d13d7'

  url "https://github.com/dscottbuch/cTiVo/releases/download/v#{version}.468/cTiVo_#{version}_468.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/blob/master/update/sparklecast.xml',
          :sha256 => 'd5462bd4d454bcd9e3d55d8ee85fc32913d332d0dba41c14be3a33ac1d6f4c54'
  homepage 'https://github.com/dscottbuch/cTiVo'
  license :oss

  app 'cTiVo.app'
end
