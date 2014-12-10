cask :v1 => 'kuaipan' do
  version :latest
  sha256 :no_check

  url 'http://kad.k.wps.cn/kuaipan/setup/kuaipan.dmg'
  homepage 'http://www.kuaipan.cn/d/mac'
  license :unknown    # todo: improve this machine-generated value

  app 'kuaipan.app'
end
