cask :v1 => 'hbuilder' do
  version :latest
  sha256 :no_check

  url 'http://download.dcloud.net.cn/HBuilder.macosx.zip'
  homepage 'http://dcloud.io/'
  license :unknown    # todo: improve this machine-generated value

  app 'HBuilder.app'
end
