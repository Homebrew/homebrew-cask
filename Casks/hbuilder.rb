cask 'hbuilder' do
  version '6.8.2'
  sha256 '5ed6f94b2a4049971289b46ed0ecabdae186677b5ff35fc8c458a9568c820e02'

  # net.cn is the official download host per the vendor homepage
  url "http://download.dcloud.net.cn/HBuilder.#{version}.macosx_64.tar.gz"
  name 'HBuilder'
  homepage 'http://dcloud.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HBuilder.app'
end
