cask :v1 => 'hbuilder' do
  version :latest
  sha256 :no_check

  # net.cn is the official download host per the vendor homepage
  url 'http://download.dcloud.net.cn/HBuilder.macosx.zip'
  name 'HBuilder'
  homepage 'http://dcloud.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HBuilder.app'
end
