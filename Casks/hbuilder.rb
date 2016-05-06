cask 'hbuilder' do
  version '7.0.0'
  sha256 '61707b6f2534a2d8c0572b5ece27f0dec7af8014de5bf4e9ba068c3fe3f1e7d3'

  # download.dcloud.net.cn was verified as official when first introduced to the cask
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.tar.gz"
  name 'HBuilder'
  homepage 'http://dcloud.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HBuilder.app'
end
