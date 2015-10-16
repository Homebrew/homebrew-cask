cask :v1 => 'aliwangwang' do
  version '3.4.3-4340'
  sha256 '3f3017c534ffdb3a5c1135eed0bf97623bb5036dc125b19066d6ec93b864d261'

  # alicdn.com is the official download host per the vendor homepage
  url "https://dbison.alicdn.com/updates/macww-nosandbox-#{version}.dmg"
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
