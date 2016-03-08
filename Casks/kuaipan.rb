cask 'kuaipan' do
  version '4.8'
  sha256 '300a1381de0ca32be3bf0ac4a6e98ad5e62f94db15eb564be83836fe161bdcb6'

  # sandai.net is the official download host per the vendor homepage
  url "http://m.down.sandai.net/kuaipan/static/mac_client/Kuaipan#{version}.dmg"
  name 'KuaiPan'
  name '金山快盘'
  homepage 'http://www.kuaipan.cn/d/mac'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'kuaipan.app'
end
