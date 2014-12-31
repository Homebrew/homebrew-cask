cask :v1 => 'kuaipan' do
  version :latest
  sha256 :no_check

  url 'http://kad.k.wps.cn/kuaipan/setup/kuaipan.dmg'
  homepage 'http://www.kuaipan.cn/d/mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'kuaipan.app'
end
