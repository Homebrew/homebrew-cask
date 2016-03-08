cask 'qiyimedia' do
  version :latest
  sha256 :no_check

  url 'http://static.qiyi.com/ext/common/iQIYIMedia_005.dmg'
  name '爱奇艺视频'
  homepage 'https://www.iqiyi.com'
  license :gratis

  app '爱奇艺.app'

  zap delete: [
                '~/Library/Containers/com.iqiyi.yingyin',
              ]
end
