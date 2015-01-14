cask :v1 => 'hbuilder' do
  version :latest
  sha256 :no_check

  url 'http://download.dcloud.net.cn/HBuilder.macosx.zip'
  homepage 'http://dcloud.io/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HBuilder.app'
end
