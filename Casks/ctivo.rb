cask 'ctivo' do
  version '3.0.1Release'
  sha256 '5ae6ba9a81577ad6443d2c9d3568191de544e8a5ac933c69ca4e96bfeb170e2c'

  url "https://github.com/dscottbuch/cTiVo/releases/download/#{version}/cTiVo.zip"
  appcast 'https://github.com/dscottbuch/cTiVo/releases.atom',
          checkpoint: '581cf862639df3b0c98cb19819d8d38db0ddd831ad9599681917e6e17087d19f'
  name 'cTiVo'
  homepage 'https://github.com/dscottbuch/cTiVo'

  app 'cTiVo.app'
end
