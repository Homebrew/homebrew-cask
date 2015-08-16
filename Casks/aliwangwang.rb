cask :v1 => 'aliwangwang' do
  version '3.2.0-3714'
  sha256 '66c85b4efbc2576d6c3a5a03b0b7a6ae1e6758d083c2547d854c489e00c03dc2'

  # alicdn.com is the official download host per the vendor homepage
  url "https://dbison.alicdn.com/updates/macww-#{version}.dmg"
  name 'Ali Wangwang'
  appcast 'http://update.labs.etao.com/macww/updates.xml'
  homepage 'http://wangwang.taobao.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AliWangwang.app'

  uninstall :quit => 'com.taobao.aliwangwang'

  zap :delete => [
                  '~/Library/Caches/com.taobao.aliwangwang',
                  '~/Library/Containers/com.taobao.aliwangwang',
                  '~/Library/Internet Plug-Ins/WangwangPlugin.plugin',
                  '~/Library/Preferences/com.taobao.aliwangwang.plist',
                  '~/Library/Saved Application State/com.taobao.aliwangwang.savedState'
                 ]
end
