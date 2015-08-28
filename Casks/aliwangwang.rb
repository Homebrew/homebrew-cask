cask :v1 => 'aliwangwang' do
<<<<<<< HEAD
  version '3.4.1-4131'
  sha256 '02c8b69acf799715537ca88fc2621db292144b2294a695b2e3af48b81266f7ee'
=======
  version '3.3.4-4127'
  sha256 '70d0d56e8d9e420567633f0e8dc425203099585dc143bed952edba96a1be2f96'
>>>>>>> cdf67fe7db241159c0f94e76f418060e31531683

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
